package basicWL;

import java.util.*;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;


public class BasicWL {
	public static World world;
	public static Vector<Situation> observations;
	public static Lexicon prev_best_lex;
	public static Lexicon gold_lex;
	public static int n_observed;
	public static Vector<Double> w_score;
	public static Vector<Double> o_score;
	public static double fscore;
	public static double precision;
	public static double recall;
	// model parameters
	public static double gamma;
	public static double alpha;
	public static double kappa;
	public static int smart_mutation;
	public static int n_iter;
	public static int n_init_lex;
	public static double temprature;
	public static double link_accept_temprature;
	public static int mutation_steps;
	public static double epsilon;
	public static int sit_memory;
	public static double keep_maxPMIpercent;
	public static double add_maxPMIpercent;

	public static void main(String[] args) throws IOException {
		observations = new Vector<Situation>();
		loadObservations("data/utterance.txt", "data/scene.txt");
		loadGoldLexicon("data/gold.txt");
		loadParams("data/params.txt");
		loadWorld("data/world.txt");
		loadPrevLex("data/prevLexicon.txt");
		w_score = new Vector<Double>();
		o_score = new Vector<Double>();
		double[] acquisition = new double[2];
		double[] performance_stats = new double[3];
		Random rand_num = new Random();
	    //rand_num.setSeed(200);
		int prevObsNum = world.nObservation;
		Vector<Situation> data = new Vector<Situation>();

		for (n_observed=0; n_observed<observations.size(); n_observed++) {
			Situation current_sit = new Situation(observations.get(n_observed).utterance,observations.get(n_observed).scene,observations.get(n_observed).id); 
			
			// if situation memory is full, shift the situations to left, remove the most left one and add the new one to the right.
			if (data.size()==sit_memory) {
				for (int i=0;i<sit_memory-1;i++){
					data.set(i,data.get(i+1));
				}
				data.remove(data.get(sit_memory-1));
			}
			data.add(current_sit);
			//

			world.update(current_sit, prevObsNum+n_observed+1, link_accept_temprature);
			if ((!(observations.get(n_observed).scene.get(0).toString().equals("".toString()))) && (!(observations.get(n_observed).utterance.get(0).toString().equals("".toString())))){
				prev_best_lex = incrementalWordLearning(current_sit, new Vector<Situation>(data));
				acquisition = scoreLearning(prev_best_lex, gold_lex);
			}
			w_score.add(acquisition[0]);
			o_score.add(acquisition[1]);
		}
		performance_stats = evaluate_lex(prev_best_lex, gold_lex);
		fscore = performance_stats[2];
		precision = performance_stats[0];
		recall = performance_stats[1];
		exportOutput(prev_best_lex, w_score, o_score, fscore, precision, recall, "results/results.txt");
	}
	
	private static Lexicon incrementalWordLearning(Situation current_sit, Vector<Situation> data) {
		Lexicon bestLex;
		Lexicon initLex;
		Vector<Link> links = new Vector<Link>();
		links.addAll(world.getLinks());
		Vector<Double> pmi = new Vector<Double>();
		pmi.addAll(world.getPMIs());
		Vector<Integer> linkFreqs = new Vector<Integer>();
		linkFreqs.addAll(world.getLinkFreqs());
		
		//trace
		System.out.println("**************************current-situation:");
		System.out.println(current_sit.utterance);
		System.out.println(current_sit.scene);
		//
		
		if ((n_observed == 0) && (world.nObservation == 0)) {
			initLex = accept(initializeLexs(n_init_lex,links,pmi,data.get(0).getUniqueObjs().size()), 500*n_init_lex, temprature, data);
			bestLex = inferLex(initLex,links,pmi,200,n_iter,mutation_steps,data);
		}
		else {
			Vector<Link> current_links = new Vector<Link>();
			Vector<String> entities = new Vector<String>();
			Vector<String> objects = new Vector<String>();
			Vector<String> words = new Vector<String>();
			for (int h=0;h<data.size();h++) {
				current_links.addAll(data.get(h).initLinks());
				objects.addAll(data.get(h).getUniqueObjs());	
				words.addAll(data.get(h).getUniqueWords());	
			}
			current_links = links.get(0).unique(current_links);
			objects = current_sit.unique(objects);
			words = current_sit.unique(words);	
			entities.addAll(objects);
			entities.addAll(words);
			Vector<Link> relevant_links = new Vector<Link>();
			relevant_links.addAll(current_links);
			relevant_links.addAll(prev_best_lex.extractLinks(objects));
			relevant_links = links.get(0).unique(relevant_links);
			Vector<Double> relevant_pmi = prev_best_lex.project(relevant_links, links, pmi,"vec");
			Vector<Double> current_pmi = prev_best_lex.project(current_links, links, pmi,"vec");
			Vector<Integer> relevant_freqs = prev_best_lex.projectInt(relevant_links, links, linkFreqs, "vec");
            // trace
			System.out.println("**************************relevant_links");
			//printLinks(relevant_links);
	   		printLinksPMIFreqs(relevant_links,relevant_pmi,relevant_freqs);
			//
			Vector<Lexicon> initLexs = prev_best_lex.unique(initializeLexs(n_init_lex,relevant_links,relevant_pmi, objects.size()));
			data.addAll(prev_best_lex.extractSituation(objects,true, links, pmi));
			initLex = accept(initLexs, 500*n_init_lex, temprature, data);
			//trace
			System.out.println("**************************init lexicons");
			for (int i=0;i<initLexs.size();i++) {
				System.out.println("**************************"+String.valueOf(i));
				printLinks(initLexs.get(i).links);
			}
			System.out.println("**************************best init lex");
			printLinks(initLex.links);
			//data.addAll(prev_best_lex.extractSituation(objects,true, links, pmi));
			Lexicon lex1 = prev_best_lex.nonConflicting(objects,relevant_links,links,pmi,keep_maxPMIpercent);
			Lexicon lex2 = inferLex(initLex,relevant_links,relevant_pmi, 1000,n_iter,mutation_steps,data);
			bestLex = lex1.merge(lex2, links, pmi,add_maxPMIpercent);
			//trace
			System.out.println("**************************bestLex");
			printLinks(bestLex.links);
			Vector<Double> lex_pmi = prev_best_lex.project(bestLex.links, world.links, world.links_pmi,"vec");
			System.out.println("**************************bestLexpmis");
			System.out.println(lex_pmi);
		}
		return bestLex;
	}
	
	private static Lexicon inferLex(Lexicon lex, Vector<Link> links, Vector<Double> pmi, int nSample, int iter, int step, Vector<Situation> data) {
		Lexicon bestLex = new Lexicon(lex.links);
		Vector<Lexicon> proposals = new Vector<Lexicon>(); 
		if (iter ==0) {
			return bestLex;
		}
		proposals.add(accept(bestLex.unique(proposeLex(bestLex, links, pmi, step)),300*step,temprature,data));
		proposals.add(bestLex);
		bestLex = accept(bestLex.unique(proposals),nSample,temprature,data);
		return inferLex(bestLex,links,pmi, nSample,(iter-1),step,data);
	}
	
	private static Vector<Lexicon> proposeLex(Lexicon lex, Vector<Link> links, Vector<Double> pmi, int step) {
		Lexicon mutated = new Lexicon(lex.links);
		return mutated.mutate(links, pmi, step);
	}
	
	private static Lexicon accept(Vector<Lexicon> lexs, int nSample, double temp, Vector<Situation> data) {
		double[] posteriors = posteriorLex(lexs,nSample,data);
		Lexicon accepted;
		if (temp != -1) {
			for (int i=0; i<lexs.size(); i++) {
				posteriors[i] = Math.pow(posteriors[i], 1/temp);
			}	
		}
		// stochastic decision 
		// Multinomial mult = new Multinomial(posteriors);
		// accepted = new Lexicon(lexs.get(mult.sample()).links);
		// greedy decision
		double max=-99;
		int max_index=0;
		for (int i=0;i<lexs.size();i++) {
			if (posteriors[i]>max) {
				max_index = i;
				max = posteriors[i];
			}
		}
		accepted = new Lexicon(lexs.get(max_index).links);
		return accepted;
	}
	
	private static double[] posteriorLex(Vector<Lexicon> lexs, int nSample, Vector<Situation> data) {
		Vector<Lexicon> results = mcmc(lexs, nSample, data);
		double[] posteriors = new double[lexs.size()];
		for (int i=0; i<lexs.size(); i++) {
			posteriors[i] = lexs.get(i).counter(results);
		}
		return posteriors;	
	}
	
	private static Vector<Lexicon> mcmc(Vector<Lexicon> lexs, int nSample, Vector<Situation> data) {
		Vector<Lexicon> results = new Vector<Lexicon>();
		double[] likelihoods = new double[lexs.size()];
		double[] priors = new double[lexs.size()];
		double[] posteriors = new double[lexs.size()];
		Lexicon sampled;
		int sampledIndx;
		for (int i=0; i<lexs.size(); i++) {
			likelihoods[i] = likelihoodLex(lexs.get(i),data);
			priors[i] = priorLex(lexs.get(i));
			posteriors[i] = likelihoods[i]*priors[i];
		}
		Multinomial posterior_mult = new Multinomial(posteriors);
		for (int i=0;i<nSample;i++) {
			sampledIndx = posterior_mult.sample();
			sampled = new Lexicon(lexs.get(sampledIndx).links);
			results.add(sampled);
		}
		// for (int i=0; i<lexs.size(); i++) {
		// 	likelihoods[i] = likelihoodLex(lexs.get(i),data);
		// 	priors[i] = priorLex(lexs.get(i));
		// }
		// Multinomial likelihood_mult = new Multinomial(likelihoods);
		// Multinomial prior_mult = new Multinomial(priors);
		// // normalizing likelihoods
		// likelihoods = likelihood_mult.pdf;
		
		// int condition_met = 0;
		// while (condition_met<nSample) {
		// 	sampledIndx = prior_mult.sample();
		// 	sampled = new Lexicon(lexs.get(sampledIndx).links);
		// 	if (flip(likelihoods[sampledIndx]) == 1) {
		// 		results.add(sampled);
		// 		condition_met +=1;
		// 	}	
		// }
		return results;
	}
	
	private static double likelihoodLex(Lexicon lex, Vector<Situation> data) {
		double prob = 1;
		for (int i=0; i<data.size(); i++) {
			prob = prob * situationProb(lex,data.get(i));
		}
		//System.out.println("in likelihood");
		//System.out.println(prob);
		return prob;
	}
	
	private static double situationProb(Lexicon lex, Situation sit) {
		Vector<String> objs = sit.getUniqueObjs();
		Vector<String> wds = sit.getUtterance(); //.getUniqueWords();
		Vector<Intent> intents = new Vector<Intent>();
		intents = power_set(objs, Math.pow(2, objs.size()) -1);
		double sum=0;
		for (int i=0; i<intents.size(); i++) {
			//if (intents.get(i).refs.size() <= 1) {
				sum = sum + utteranceProb(lex,wds,intents.get(i));
			//}
		}
		return sum;
	}
	
	private static double utteranceProb(Lexicon lex, Vector<String> wds, Intent refs) {
		double prob = 1;
		for (int i=0; i<wds.size(); i++) {
			prob = prob * wordProb(lex,wds.get(i),refs);
		}
		return prob;
	}
	
	private static double wordProb(Lexicon lex, String wd, Intent r) {
		double sum =0;
		for (int i=0; i<r.refs.size(); i++) {
			sum = sum + (word_refProb(wd,r.refs.get(i),lex) / (r.refs.size()));
		}
		return (gamma*sum + (1 - gamma) * word_nonRefProb(wd, lex));
	}
	
	private static double word_refProb(String wd, String obj, Lexicon lex) {
		Vector<String> associated_words = lex.getWordsLinkedTo(obj);
		int mappings = associated_words.size();
		if ((mappings == 0) || (!(associated_words.contains(wd)))) {
			return 0;
		}
		return 1 / (double)(mappings);
	}
	
	private static double word_nonRefProb(String wd, Lexicon lex) {
		Vector<String> lex_wds = lex.getUniqueWords();
		if (lex_wds.contains(wd)) {
			return kappa;
		}
		return 1;
	}
	
	private static double priorLex(Lexicon lex) {
		//return Math.exp(alpha * (-(lex.links.size() - lex.getUniqueWords().size())));
		return Math.exp(alpha * (-(lex.links.size())));
	}
	
	private static Vector<Lexicon>  initializeLexs(int nLex, Vector<Link> links, Vector<Double> pmi, int nLink) {
		Vector<Lexicon> initLexs = new Vector<Lexicon>();
		for (int i=0; i<nLex; i++) {
			initLexs.add(sampleLexicon(links,pmi,nLink));
			//System.out.println("in initializeLexs");
			//printLinks(initLexs.get(i).links);
		}
		return initLexs;
	}
	
	private static Lexicon sampleLexicon(Vector<Link> ls, Vector<Double> mi, int nLink) {
		double nLink_nonUniform_prob = 1;
		//if (gamma > 0.5) {
		//	// for datasets unlike childs
		//	nLink_nonUniform_prob = 0;
		//}
		Vector<Link> sampledLinks = new Vector<Link>();
		Vector<Link> links = new Vector<Link>();
		links.addAll(ls);
		Vector<Double> pmi = new Vector<Double>();
		pmi.addAll(mi);
		Random rand = new Random();
		int nLinks = 1;
		if (rand.nextFloat() <= nLink_nonUniform_prob) {
			double[] nLink_priors = new double[links.size()];
			for (int j=0;j<links.size();j++) {
				nLink_priors[j] = Math.exp(1 * -1 * (j+1));
			}
			Multinomial nlink_mult = new Multinomial(nLink_priors);
		 	nLinks = (nlink_mult.sample()+1);
		}
		else {
			nLinks = rand.nextInt(links.size()) + 1;
		}

		// //int  nLinks = rand.nextInt(links.size()) + 1;
		nLinks = 2;
		int  link_indx;
		for (int i=0; i<nLinks; i++) {
			// sampling without replacement
			Multinomial mult = new Multinomial(prev_best_lex.project(links,links,pmi));
			link_indx = mult.sample();
			sampledLinks.add(links.get(link_indx));
			links.remove(link_indx);
			pmi.remove(link_indx);
		}
		return new Lexicon(sampledLinks);
	}
	
	public static Vector<Intent> power_set(Vector<String> objs, double nSub) {
		Vector<Intent> intents = new Vector<Intent>();
		Vector<Double> sub_num = new Vector<Double>();
		if (objs.size() == 1) {
			intents.add(new Intent(objs));
			intents.add(new Intent());
			return intents;
		}
		else {
			if (nSub == -1) {
				return intents;
			}
			else {
				sub_num = binaryNum(nSub);
				intents.add(subset(levelBinaries(sub_num,objs.size()),objs));
				intents.addAll(power_set(objs, nSub-1));
			}
		}
		return intents;
	}
	
	public static Vector<Double> binaryNum(double n) {
		double a = Math.floor(n/2);
		Vector<Double> binNum = new Vector<Double>();
		if (a<2) {
			binNum.add(a);
			binNum.add(n-a*2);
		}
		else {
			binNum = binaryNum(a);
			binNum.add(n-a*2);
		}
		return binNum;
	}
	
	public static Intent subset(Vector<Double> sub_num, Vector<String> objs) {
		Vector<String> refs = new Vector<String>();
		for (int i=0; i<objs.size(); i++) {
			if (sub_num.get(i) == 1) {
				refs.add(objs.get(i));
			}
		}
		return (new Intent(refs));
	}
	
	public static Vector<Double> levelBinaries(Vector<Double> a, int len) {
		if (a.size()==len) {
			return a;
		}
		Vector<Double> temp = new Vector<Double>();
		for (int i=0; i<(len-a.size()); i++) {
			temp.add((double)0);
		}
		temp.addAll(a);
		return temp;
	}
		
	private static void loadParams(String inputF_params) throws IOException {
		//Vector<String> line = new Vector<String>();
		String[] params = new String[13];
		Scanner scanner = new Scanner(new File(inputF_params));
		
		int i = 0;
		while(scanner.hasNext()) {
			scanner.next();
			params[i] = scanner.next();
			i++;
	   }
		scanner.close();
		
		gamma = Double.parseDouble(params[0]);
		alpha = Double.parseDouble(params[1]);
		kappa = Double.parseDouble(params[2]);
		smart_mutation = Integer.parseInt(params[3]);
		n_iter = Integer.parseInt(params[4]);
		n_init_lex = Integer.parseInt(params[5]);
		temprature = Double.parseDouble(params[6]);
		link_accept_temprature = Double.parseDouble(params[7]);
		mutation_steps = Integer.parseInt(params[8]);
		epsilon = Double.parseDouble(params[9]);
		sit_memory = Integer.parseInt(params[10]);
		keep_maxPMIpercent = Double.parseDouble(params[11]);
		add_maxPMIpercent = Double.parseDouble(params[12]);
	}
	
	private static void loadGoldLexicon(String inputF_gold) throws IOException {
		String[] line = new String[2];
		Scanner scanner = new Scanner(new File(inputF_gold));
		Vector<Link> links = new Vector<Link>();
		
		while(scanner.hasNext()) {
			line = scanner.nextLine().split("[, ]");
			// first element of line is word and the second element is the object
			links.add(new Link(line[0], line[1]));
	   }
		gold_lex = new Lexicon(links);
		System.out.println("in load gold lex: goldlex:");
		printLinks(links);
		scanner.close();
	}

	private static void loadWorld(String inputF_world) throws IOException {
		Scanner scanner = new Scanner(new File(inputF_world));
		
		int nObservation = 0;
	    Vector<String> words = new Vector<String>();
		Vector<String> unique_words = new Vector<String>();
		Vector<Integer> words_freq = new Vector<Integer>();
		Vector<Double> words_prob = new Vector<Double>();
		Vector<String> objects = new Vector<String>();
		Vector<String> unique_objects = new Vector<String>();
		Vector<Integer> objects_freq = new Vector<Integer>();
		Vector<Double> objects_prob = new Vector<Double>();
		Vector<Link> links = new Vector<Link>();
		Vector<Integer> links_freq = new Vector<Integer>();
		Vector<Double> links_prob = new Vector<Double>();
		Vector<Double> links_pmi = new Vector<Double>(); 

		world = new World();
		while(scanner.hasNext()) {
			if (scanner.hasNext("nObservation:")) {
				scanner.next();
				nObservation = scanner.nextInt();	
			}
			else if (scanner.hasNext("words:")) {
				scanner.next();
				while (!(scanner.hasNext("unique_words:"))) {					
					words.add(scanner.next());
				}
			}
			else if (scanner.hasNext("unique_words:")) {
				scanner.next();
				while (!(scanner.hasNext("words_freq:"))) {					
					unique_words.add(scanner.next());
				}
			}
			else if (scanner.hasNext("words_freq:")) {
				scanner.next();
				while (!(scanner.hasNext("words_prob:"))) {					
					words_freq.add(scanner.nextInt());
				}
			}
			else if (scanner.hasNext("words_prob:")) {
				scanner.next();
				while (!(scanner.hasNext("objects:"))) {					
					words_prob.add(scanner.nextDouble());
				}
			}
			else if (scanner.hasNext("objects:")) {
				scanner.next();
				while (!(scanner.hasNext("unique_objects:"))) {					
					objects.add(scanner.next());
				}
			}
			else if (scanner.hasNext("unique_objects:")) {
				scanner.next();
				while (!(scanner.hasNext("objects_freq:"))) {					
					unique_objects.add(scanner.next());
				}
			}
			else if (scanner.hasNext("objects_freq:")) {
				scanner.next();
				while (!(scanner.hasNext("objects_prob:"))) {					
					objects_freq.add(scanner.nextInt());
				}
			}
			else if (scanner.hasNext("objects_prob:")) {
				scanner.next();
				while (!(scanner.hasNext("links:"))) {					
					objects_prob.add(scanner.nextDouble());
				}
			}
			else if (scanner.hasNext("links:")) {
				scanner.next();
				while (!(scanner.hasNext("links_freq:"))) {	
					String word = scanner.next();
					String object = scanner.next();				
					links.add(new Link(word,object));
				}
			}
			else if (scanner.hasNext("links_freq:")) {
				scanner.next();
				while (!(scanner.hasNext("links_prob:"))) {					
					links_freq.add(scanner.nextInt());
				}
			}
			else if (scanner.hasNext("links_prob:")) {
				scanner.next();
				while (!(scanner.hasNext("links_pmi:"))) {					
					links_prob.add(scanner.nextDouble());
				}
			}
			else if (scanner.hasNext("links_pmi:")) {
				scanner.next();
				while (scanner.hasNextDouble()) {					
					links_pmi.add(scanner.nextDouble());
				}
			}
			else {
				break;
			}
	   	}

		world.set_nObs(nObservation);
		world.set_words(words) ;
		world.set_unique_words(unique_words);
		world.set_words_freq(words_freq);
		world.set_words_prob(words_prob);
		world.set_objects(objects); 
		world.set_unique_objects(unique_objects);
		world.set_objects_freq(objects_freq);
		world.set_objects_prob(objects_prob); 
		world.set_links(links); 	
		world.set_links_freq(links_freq); 	
		world.set_links_prob(links_prob); 
		world.set_links_pmi(links_pmi); 
		
		scanner.close();
	}

	private static void loadPrevLex(String inputF_prevLex) throws IOException {
		String[] line = new String[2];
		Scanner scanner = new Scanner(new File(inputF_prevLex));

		prev_best_lex = new Lexicon();		
		while(scanner.hasNext()) {
			line = scanner.nextLine().split("[, ]");
			prev_best_lex.links.add(new Link(line[0], line[1]));
	   	}
		scanner.close();
	   	System.out.println("in loadPrevLex. prevLex:");
		printLinks(prev_best_lex.links);
	}
	
	private static void loadObservations(String inputF_utterance, String inputF_scene) throws IOException {
		Vector<String> utterance = new Vector<String>();
		Vector<String> scene = new Vector<String>();
		Scanner scanner_utterance = new Scanner(new File(inputF_utterance));
		Scanner scanner_scene = new Scanner(new File(inputF_scene));
		int situation_id = 0;
		
		while(scanner_utterance.hasNext() && scanner_scene.hasNext()) {
			utterance = new Vector<String>(Arrays.asList(scanner_utterance.nextLine().trim().split("\\s+")));
			scene = new Vector<String>(Arrays.asList(scanner_scene.nextLine().trim().split("\\s+")));
			//System.out.println(scene.get(0));
			//System.out.println(String.valueOf(scene.get(0).toString().equals("".toString())));
			Situation sit = new Situation(utterance, scene, situation_id);
			observations.add(sit);
			situation_id ++;
	   }
		scanner_utterance.close();
		scanner_scene.close();
	}
	
	private static void exportOutput(Lexicon best, Vector<Double> wScores, Vector<Double> oScores, double fscore, double p, double r, String outputF ) throws IOException {

		FileWriter fw = new FileWriter(new File(outputF), true);
		// fw.write("world: "+"\n");		
		// fw.write("nObservation: \n"+String.valueOf(world.nObservation)+"\n\n");
		
		// fw.write("words: "+"\n");
		// for (int i=0; i<world.words.size(); i++) {
		// 	fw.write(world.words.get(i)+" ");
		// }
		// fw.write("\n\n");

		// fw.write("unique_words: "+"\n");
		// for (int i=0; i<world.unique_words.size(); i++) {
		// 	fw.write(world.unique_words.get(i)+" ");
		// }
		// fw.write("\n\n");

		// fw.write("words_freq: "+"\n");
		// for (int i=0; i<world.words_freq.size(); i++) {
		// 	fw.write(String.valueOf(world.words_freq.get(i))+" ");
		// }
		// fw.write("\n\n");

		// fw.write("words_prob: "+"\n");
		// for (int i=0; i<world.words_prob.size(); i++) {
		// 	fw.write(String.valueOf(world.words_prob.get(i))+" ");
		// }
		// fw.write("\n\n");

		// fw.write("objects: "+"\n");
		// for (int i=0; i<world.objects.size(); i++) {
		// 	fw.write(world.objects.get(i)+" ");
		// }
		// fw.write("\n\n");

		// fw.write("unique_objects: "+"\n");
		// for (int i=0; i<world.unique_objects.size(); i++) {
		// 	fw.write(world.unique_objects.get(i)+" ");
		// }
		// fw.write("\n\n");

		// fw.write("objects_freq: "+"\n");
		// for (int i=0; i<world.objects_freq.size(); i++) {
		// 	fw.write(String.valueOf(world.objects_freq.get(i))+" ");
		// }
		// fw.write("\n\n");

		// fw.write("objects_prob: "+"\n");
		// for (int i=0; i<world.objects_prob.size(); i++) {
		// 	fw.write(String.valueOf(world.objects_prob.get(i))+" ");
		// }
		// fw.write("\n\n");

		// fw.write("links: "+"\n");
		// for (int i=0; i<world.links.size(); i++) {
		// 	fw.write(world.links.get(i).wd+" "+world.links.get(i).obj+" ");
		// }
		// fw.write("\n\n");

		// fw.write("links_freq: "+"\n");
		// for (int i=0; i<world.links_freq.size(); i++) {
		// 	fw.write(String.valueOf(world.links_freq.get(i))+" ");
		// }
		// fw.write("\n\n");

		// fw.write("links_prob: "+"\n");
		// for (int i=0; i<world.links_prob.size(); i++) {
		// 	fw.write(String.valueOf(world.links_prob.get(i))+" ");
		// }
		// fw.write("\n\n");

		// fw.write("links_pmi: "+"\n");
		// for (int i=0; i<world.links_pmi.size(); i++) {
		// 	fw.write(String.valueOf(world.links_pmi.get(i))+" ");
		// }
		// fw.write("\n\n");

		// fw.write("Best Lexicon: "+"\n");
		// for (int i=0; i<best.links.size(); i++) {
		// 	//fw.write("("+best.links.get(i).wd+","+best.links.get(i).obj+")"+"\n");
		// 	fw.write(best.links.get(i).wd+" "+best.links.get(i).obj+"\n");
		// }
		// fw.write("\n");
		
		// fw.write("word acquisition scores: "+"\n");
		// for (int i=0; i<wScores.size(); i++) {
		// 	fw.write(String.valueOf(wScores.get(i))+" ");
		// }
		// fw.write("\n\n");
		
		// fw.write("object acquisition scores: "+"\n");
		// for (int i=0; i<oScores.size(); i++) {
		// 	fw.write(String.valueOf(oScores.get(i))+" ");
		// }
		// fw.write("\n\n");
		
		fw.write("performance stats:"+"\n");
		fw.write("precision: "+String.valueOf(p)+"\n");
		fw.write("recall: "+String.valueOf(r)+"\n");
		fw.write("fscore: "+String.valueOf(fscore)+"\n");
		fw.close();
	}
	
	private static double[] scoreLearning(Lexicon best, Lexicon gold) {
		double[] scores = new double[2];
		scores[0] = 0;
		scores[1] =0;
		for (int i=0; i<gold.links.size(); i++) {
			if (gold.links.get(i).isMemberOf(best.links)) {
				String wd = gold.links.get(i).wd;
				String obj = gold.links.get(i).obj;
				scores[0] = scores[0] + (1/ best.getLinksOfWord(wd).size());
				scores[1] = scores[1] + (1/ best.getLinksOfObj(obj).size());
			}
		}
		scores[0] = scores[0] / gold.getUniqueWords().size();
		scores[1] = scores[1] /gold.getUniqueObjects().size();
		return scores;
	}
	
	private static double[] evaluate_lex(Lexicon best, Lexicon gold) {
		double tp = 0;
		double fn = 0;
		double fp = 0;
		double[] stats = new double[3];
		for (int i=0; i<gold.links.size(); i++) {
			if (gold.links.get(i).isMemberOf(best.links)) {
				tp = tp + 1;
			}
		}
		fn = gold.links.size() - tp;
		fp = best.links.size() - tp;
		stats[0] = tp / (tp + fp);
		stats[1] = tp / (tp + fn);
		stats[2] = 2* stats[0]*stats[1] / (stats[0] + stats[1]); 
		return stats;
	}
	
///////////////////////////////////////////////// utility functions/////////////////////////////////////////////////

	public static int flip(double prob) {
		double[] probs = new double[2];
		probs[0] = 1 - prob;
		probs[1] = prob;
		Multinomial mult = new Multinomial(probs);
		return mult.sample();
	}
	
	public static void printLinks(Vector<Link> ls) {
		for (int i=0; i<ls.size(); i++) {
			System.out.println(ls.get(i).wd+" "+ls.get(i).obj);
		}
	}

	public static void printLinksPMIFreqs(Vector<Link> ls, Vector<Double> pmi, Vector<Integer> freqs) {
		for (int i=0; i<ls.size(); i++) {
			System.out.println(ls.get(i).wd+" "+ls.get(i).obj+" "+pmi.get(i)+" "+freqs.get(i));
		}
	}

}
