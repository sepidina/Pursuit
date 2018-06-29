package basicWL;
import java.util.Vector;

public class World {
	public int nObservation;
	public Vector<String> words;
	public Vector<String> unique_words;
	public Vector<Integer> words_freq;
	public Vector<Double> words_prob;
	
	public Vector<String> objects;
	public Vector<String> unique_objects;
	public Vector<Integer> objects_freq;
	public Vector<Double> objects_prob;
	
	public Vector<Link> links;
	public Vector<Integer> links_freq;
	public Vector<Double> links_prob;
	public Vector<Double> links_pmi;
	public Vector<Double> links_ref_prob;
	
	public World() {
		nObservation =0;
		words = new Vector<String>();
		unique_words = new Vector<String>();
		words_freq = new Vector<Integer>();
		words_prob = new Vector<Double>();
		
		objects = new Vector<String>();
		unique_objects = new Vector<String>();
		objects_freq = new Vector<Integer>();
		objects_prob = new Vector<Double>();
		
		links = new Vector<Link>();
		links_freq = new Vector<Integer>();
		links_prob = new Vector<Double>();
		links_pmi = new Vector<Double>();
		links_ref_prob = new Vector<Double>();
	}

	public void set_nObs(int n) {
		nObservation = n;
	} 

	public void set_words(Vector<String> wds) {
		words = wds;
	}

	public void set_unique_words(Vector<String> uniqWds) {
		unique_words = uniqWds;
	}

	public void set_words_freq(Vector<Integer> wdFreqs) {
		words_freq = wdFreqs;
	}

	public void set_words_prob(Vector<Double> wdProbs) {
		words_prob = wdProbs;
	}

	public void set_objects(Vector<String> objs) {
		objects = objs;
	}

	public void set_unique_objects(Vector<String> uniqObjs) {
		unique_objects = uniqObjs;
	}

	public void set_objects_freq(Vector<Integer> objFreqs) {
		objects_freq = objFreqs;
	}

	public void set_objects_prob(Vector<Double> objProbs) {
		objects_prob = objProbs;
	}

	public void set_links(Vector<Link> ls) {
		links = ls;
	}

	public void set_links_freq(Vector<Integer> linkFreqs) {
		links_freq = linkFreqs;
	}

	public void set_links_prob(Vector<Double> linkProbs) {
		links_prob = linkProbs;
	}

	public void set_links_pmi(Vector<Double> linkPMI) {
		links_pmi = linkPMI;
	}
	
	public Vector<Link> getLinks() {
		return this.links;
	}
	
	public Vector<Double> getPMIs() {
		return this.links_pmi;
	}

	public Vector<Integer> getLinkFreqs() {
		return this.links_freq;
	}
	
	public void update(Situation sit, int nObs,double temprature) {
		this.nObservation = nObs;
		
		if (!(sit.getUtterance().get(0).equals("".toString()))) {
			words.addAll(sit.getUtterance());
			unique_words = sit.unique(words);
			words_freq = extractFreqs(unique_words, words);
			words_prob = matrixDivision(words_freq, nObs);
		}
		
		if (!(sit.getScene().get(0).equals("".toString()))) {
			objects.addAll(sit.getScene());
			unique_objects = sit.unique(objects);
			objects_freq = extractFreqs(unique_objects, objects);
			objects_prob = matrixDivision(objects_freq, nObs); 
		}
		
		if ((!(sit.getUtterance().get(0).equals("".toString()))) && (!(sit.getScene().get(0).equals("".toString())))) {
			Vector<Link> current_links = new Vector<Link>();
			current_links = sit.initLinks();
			//double prob = 1 / (double)(current_links.size());
			double prob = 1;
			if (this.links.size() ==0) {
				links = new Vector<Link>(current_links);
				for (int i=0; i<current_links.size(); i++) {
					links_freq.add(1);
					links_prob.add(prob);
				}
			}
			else {
				this.update_links_linkFreqs_linkProbs(current_links, prob);
			}
			links_pmi  = compute_pmi(temprature, nObs);
			links_ref_prob = compute_condProbs();
		}
	}
	
	public void update_links_linkFreqs_linkProbs(Vector<Link> ls, double prob) {
		for (int i=0; i<ls.size(); i++) {
			if (ls.get(i).isMemberOf(links)) {
				int indx = ls.get(i).indexIn(links);
				links_freq.set(indx, links_freq.get(indx) + 1) ;
				links_prob.set(indx, links_prob.get(indx) + prob);
			}
			else {
				links.add(ls.get(i));
				links_freq.add(1);
				links_prob.add(prob);
			}
		}
	}
	
	public Vector<Double> compute_pmi(double temp, int nObs) {
		Vector<Double> pmi = new Vector<Double>();
		for (int i=0; i<links.size(); i++) {
			int obj_indx = unique_objects.indexOf(links.get(i).obj); 
			int wd_indx = unique_words.indexOf(links.get(i).wd);
//			pmi.add(Math.pow(links_prob.get(i)/(objects_prob.get(obj_indx)*words_prob.get(wd_indx)), (1/temp)));
			pmi.add(Math.pow((links_prob.get(i)/(double)nObs)/(objects_prob.get(obj_indx)*words_prob.get(wd_indx)), (1/temp)));
		}
		return pmi;
	}

	public Vector<Double> compute_condProbs() {
		Vector<Double> refProbs = new Vector<Double>();
		for (int i=0; i<links.size(); i++) {
			int obj_indx = unique_objects.indexOf(links.get(i).obj); 
			int wd_indx = unique_words.indexOf(links.get(i).wd);
			refProbs.add(links_freq.get(i)/(double)(words_freq.get(wd_indx)));
		}
		return refProbs;
	}
	 
	///////////////////////////////////////////////// utility functions/////////////////////////////////////////////////
	public Vector<Integer> extractFreqs(Vector<String> uniqueLst, Vector<String> lst) {
		Vector<Integer> freqs = new Vector<Integer>();
		for (int i=0; i<uniqueLst.size(); i++) {
			freqs.add(counter(uniqueLst.get(i),lst));
		}
		return freqs;
	}
	
	public int counter(String str, Vector<String> strVec) {
		int count = 0; 
		for (int i=0; i<strVec.size(); i++) {
			if (str.equals(strVec.get(i))) {
				count = count + 1;
			}
		}
		return count;
	}
	
	public Vector<Double>  matrixDivision(Vector<Integer> v, int value) {
		Vector<Double> d_vector = new Vector<Double>();
		for (int i=0; i<v.size(); i++) {
			d_vector.add(v.get(i)/(double)(value));
		}
		return d_vector;
	}
	
	public void printLinks(Vector<Link> ls) {
		for (int i=0; i<ls.size(); i++) {
			System.out.println(ls.get(i).wd);
			System.out.println(ls.get(i).obj);
		}
	}

}
