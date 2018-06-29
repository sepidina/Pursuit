package basicWL;
import java.util.*;

public class Lexicon {
	public Vector<Link> links;
	
	public Lexicon() {
		links = new Vector<Link>();
	}
	
	public Lexicon(Vector<Link> ls) {
		links = ls;
	}
	
	public void add(Link l) {
		links.add(l);
	}
	
	public void delete(Link l) {
		links.remove(l);
	}
	
	public void replace(Link l1, Link l2) {
		links.remove(l1);
		links.add(l2);
	}
	
	public Vector<String> getWords() {
		Vector<String> words = new Vector<String>();
		for(int i=0; i<links.size(); i++) {
			words.add(links.get(i).wd);
		}
		return words;
	}
	
	public Vector<String> getUniqueWords() {
		Vector<String> words = new Vector<String>();
		for(int i=0; i<links.size(); i++) {
			if (!(words.contains(links.get(i).wd))) {
				words.add(links.get(i).wd);
			}
		}
		return words;
	}
	
	public Vector<String> getObjects() {
		Vector<String> objs = new Vector<String>();
		for(int i=0; i<links.size(); i++) {
			objs.add(links.get(i).obj);
		}
		return objs;
	}
	
	public Vector<String> getUniqueObjects() {
		Vector<String> objs = new Vector<String>();
		for(int i=0; i<links.size(); i++) {
			if (!(objs.contains(links.get(i).obj))) {
				objs.add(links.get(i).obj);
			}
		}
		return objs;
	}
	
	public Vector<Link> getLinksOfWord(String wd) {
		Vector<Link> ls = new Vector<Link>();
		for(int i=0; i<links.size(); i++) {
			if (wd.equals(links.get(i).wd)) {
				ls.add(links.get(i));
			}
		}
		return ls;
	}
	
	public Vector<Link> getLinksOfObj(String obj) {
		Vector<Link> ls = new Vector<Link>();
		for(int i=0; i<links.size(); i++) {
			if (obj.equals(links.get(i).obj)) {
				ls.add(links.get(i));
			}
		}
		return ls;	
	}
	
	public Vector<String> getWordsLinkedTo(String obj) {
		Vector<String> words = new Vector<String>();
		for(int i=0; i<links.size(); i++) {
			if (obj.equals(links.get(i).obj)) {
				words.add(links.get(i).wd);
			}
		}
		return words;
	}
	
	public Vector<String> getObjsLinkedTo(String wd) {
		Vector<String> objects = new Vector<String>();
		for(int i=0; i<links.size(); i++) {
			if (wd.equals(links.get(i).wd)) {
				objects.add(links.get(i).obj);
			}
		}
		return objects;
	}
	
	public void remove(Vector<Link> ls) {
		//removes a list of Links from the lexicon links
		for (int i=0; i<ls.size(); i++) {
			links.remove(ls.get(i));
		}
	}
	
	public Vector<Lexicon> removeAllInstances(Vector<Lexicon> lexs) {
		//removes all instances of this lexicon from lexs
		Vector<Lexicon> res = new Vector<Lexicon>();
		for (int i=0; i<lexs.size(); i++) {
			if (!(lexs.get(i).isEqualTo(this))) {
				res.add(lexs.get(i));
			}
		}
		return res;
	}
	
	public boolean isSubsetOf(Lexicon l) {
		for (int i=0; i<links.size(); i++) {
			if (!(links.get(i).isMemberOf(l.links))) {
				return false;
			}
		}
		return true;
	}
	
	public boolean isEqualTo(Lexicon l) {
		boolean yes = false;
		if (this.isSubsetOf(l) && l.isSubsetOf(this)) {
			yes = true;
		}
		return yes;
	}
	
	public int counter(Vector<Lexicon> lexs) {
		int count = 0; 
		for (int i=0; i<lexs.size(); i++) {
			if (this.isEqualTo(lexs.get(i))) {
				count = count + 1;
			}
		}
		return count;
	}
	
	public Lexicon merge(Lexicon l, Vector<Link> links, Vector<Double> pmis, double maxPMI_perc) {
		Lexicon merged = new Lexicon(this.links);
		for (int i=0; i<l.links.size(); i++) {
			if (!(l.links.get(i).isMemberOf(this.links))) {
				//printLinks(this.links);
				// links of wd currently in this.links
				Vector<Link> alternativeLinks = this.getLinksOfObj(l.links.get(i).obj);
				alternativeLinks.addAll(l.getLinksOfObj(l.links.get(i).obj));
				boolean add = true;
				for (int j=0; j<alternativeLinks.size(); j++) {
					if (1/maxPMI_perc * pmis.get(l.links.get(i).indexIn(links)) < pmis.get(alternativeLinks.get(j).indexIn(links))) {
						add = false;	
					}
				}
				if (add) {
					merged.links.add(l.links.get(i));
				}
			}
			
		}
		//merged.links.addAll(l.links);
		return merged;
	}
	
	public Vector<Lexicon> pair(Lexicon l) {
		Vector<Lexicon> lexicons = new Vector<Lexicon>();
		lexicons.add(new Lexicon(this.links));
		lexicons.add(new Lexicon(l.links));
		return lexicons;
	}
	
	public Vector<Lexicon> pair(Vector<Lexicon> lexs) {
		Vector<Lexicon> lexicons = new Vector<Lexicon>();
		lexicons.add(new Lexicon(this.links));
		lexicons.addAll(lexs);
		return lexicons;
	}
	
	public Vector<Lexicon> unique(Vector<Lexicon> lexs) {
		// removes the duplicates from lexs
		if (lexs.size() == 0) {
			return (new Vector<Lexicon>(lexs));
		}	
		Lexicon first = lexs.get(0); 
		return first.pair(unique(first.removeAllInstances(lexs))); 		
	}
	
	public Vector<Link> extractLinks(Vector<String> entities) {
		Vector<Link> extracted = new Vector<Link>();
		for (int i=0; i<this.links.size(); i++) {
			if (entities.contains(links.get(i).wd) || entities.contains(links.get(i).obj)) {
				extracted.add(links.get(i));
			}
		}
		return extracted;
	}
	
	public Vector<Situation> extractSituation(Vector<String> entities,boolean maxPmiOnly,Vector<Link> lnks, Vector<Double> pmis) {
		Vector<Situation> extracted = new Vector<Situation>();
		if (maxPmiOnly) {
			for (int i=0; i<this.links.size(); i++) {
				if (entities.contains(links.get(i).wd) || entities.contains(links.get(i).obj)) {
					double currentLinkPMI = pmis.get(links.get(i).indexIn(lnks));
					Vector<String> tempUtter = new Vector<String>();
					Vector<String> tempScene = new Vector<String>();
					Vector<Link> alternativeLinks = this.getLinksOfObj(links.get(i).obj);
					double[] tempPMIs = project(alternativeLinks,lnks,pmis);
					// finding the max
					double maxPMI = -9999;
					for (int j=0; j<tempPMIs.length; j++) {
						if (tempPMIs[j]>maxPMI) {
							maxPMI = tempPMIs[j];
						}
					}
					if (maxPMI <= currentLinkPMI) {
						tempUtter.add(links.get(i).wd);
						tempScene.add(links.get(i).obj);
						extracted.add(new Situation(tempUtter,tempScene,100));
						}
					}
				}
			}		
		else {
			for (int i=0; i<this.links.size(); i++) {
				if (entities.contains(links.get(i).wd) || entities.contains(links.get(i).obj)) {
					Vector<String> tempUtter = new Vector<String>();
					Vector<String> tempScene = new Vector<String>();
					tempUtter.add(links.get(i).wd);
					tempScene.add(links.get(i).obj);
					extracted.add(new Situation(tempUtter,tempScene,100));
				}
			}
		}
		return extracted;	
	}
	
	public Lexicon nonConflicting(Vector<String> entities, Vector<Link> relevantLinks, Vector<Link> lnks, Vector<Double> pmis, double maxPMI_perc) {
		Vector<Link> noConflict = new Vector<Link>();
		for (int i=0; i<this.links.size(); i++) {
			if (entities.contains(links.get(i).wd) || entities.contains(links.get(i).obj)) {
				double currentLinkPMI = pmis.get(links.get(i).indexIn(lnks));
				Lexicon tempLexicon = new Lexicon(relevantLinks);
				Vector<Link> tempLinks = tempLexicon.getLinksOfObj(links.get(i).obj);
				double[] tempPMIs = tempLexicon.project(tempLinks,lnks,pmis);
				// finding the max
				double maxPMI = -9999;
				for (int j=0; j<tempPMIs.length; j++) {
					if (tempPMIs[j]>maxPMI) {
						maxPMI = tempPMIs[j];
					}
				}
				if (maxPMI <= 1/maxPMI_perc * currentLinkPMI) {
					noConflict.add(links.get(i));
				}
			}
			else {
				noConflict.add(links.get(i));
			}
		}
		return new Lexicon(noConflict);
	}
	
	public Vector<Lexicon> mutate(Vector<Link> links, Vector<Double> pmi, int step) {
		Vector<Lexicon> lexicons = new Vector<Lexicon>();
		Lexicon l1;
		Lexicon l2;
		Lexicon l3;
		if (step == 0) {
			lexicons.add(this);
			return lexicons;
		}
		if (this.links.size() == 0) {
			l1 = this.mutate_add(links, pmi);
			l2 = this.mutate_add(links, pmi);
			l3 = this.mutate_add(links, pmi);
		}
		else {
			l1 = this.mutate_add(links, pmi);
			l2 = this.mutate_delete(links, pmi);
			l3 = this.mutate_replace(links, pmi);
		}
		lexicons.addAll(l1.mutate(links, pmi, step-1));
		lexicons.addAll(l2.mutate(links, pmi, step-1));
		lexicons.addAll(l3.mutate(links, pmi, step-1));
		return lexicons;
	}
	
	public Lexicon mutate_add(Vector<Link> links, Vector<Double> pmi) {
		Lexicon mutated = new Lexicon(this.links);
		Lexicon temp = new Lexicon(links); 
		if (temp.isSubsetOf(this) || (this.links.size()==0)) {
			return mutated;
		}
		Vector<Link> unusedLinks = new Vector<Link>();
		unusedLinks.addAll(links); 
		unusedLinks.removeAll(this.links);
		double[] unusedProbs = project(unusedLinks,links,pmi);
		Multinomial mult = new Multinomial(unusedProbs);
		Link chosenLink = unusedLinks.get(mult.sample()); 
		mutated.add(chosenLink);
		return mutated;
	}
	
	public Lexicon mutate_delete(Vector<Link> links, Vector<Double> pmi) {
		Lexicon mutated = new Lexicon(this.links); 
		Lexicon temp = new Lexicon(links);
		if ((temp.isSubsetOf(this) && (links.size()==1)) || (mutated.links.size()==0)) {
			return mutated;
		}
		Vector<String> words = new Vector<String>(mutated.getUniqueWords());
		Vector<String> objects = new Vector<String>(mutated.getUniqueObjects());
		int nWord = words.size();
		int nObj = objects.size();
		ArrayList<Integer> entity_n_assoc = new ArrayList<Integer>();
		for (int i=0; i<(nWord+nObj); i++) {
			if (i<nWord) {
				entity_n_assoc.add(mutated.getLinksOfWord(words.get(i)).size());
			}
			else {
				entity_n_assoc.add(mutated.getLinksOfObj(objects.get(i-nWord)).size());
			}
		}
		boolean allEq = true;
		for (int i=0; i<(nWord+nObj); i++) {
			if (entity_n_assoc.get(i) != entity_n_assoc.get(0)) {
				allEq = false;
				break;
			}
		}
		if (allEq) {
			return mutated.mutate_delete_pmi(links, pmi);
		}
		return mutated.mutate_delete_entropy(links, pmi, entity_n_assoc, words, objects);
		
	}
	
	public Lexicon mutate_delete_pmi(Vector<Link> links, Vector<Double> pmi) {
		Lexicon mutated = new Lexicon(this.links);
		double[] lexLinksPMIs = project(mutated.links,links,pmi);
		// complement of the above distribution
		for (int i=0; i<lexLinksPMIs.length; i++) {
			lexLinksPMIs[i] = 1 - lexLinksPMIs[i];
		}
		Multinomial mult = new Multinomial(lexLinksPMIs);
		Link chosenLink = mutated.links.get(mult.sample());
		mutated.delete(chosenLink);
		return mutated;
	}
	
	public Lexicon mutate_delete_entropy(Vector<Link> links, Vector<Double> pmi, ArrayList<Integer> entity_n_assoc, Vector<String> wds, Vector<String> objs) {
		Lexicon mutated = new Lexicon(this.links);
		Vector<Link> subset_links = new Vector<Link>();
		int max_indx =  entity_n_assoc.indexOf(Collections.max(entity_n_assoc));
		if (max_indx < wds.size()) {
			subset_links = mutated.getLinksOfWord(wds.get(max_indx));
		}
		else {
			subset_links = mutated.getLinksOfObj(objs.get(max_indx - wds.size()));
		}
		double[] subset_PMIs = project(subset_links,links,pmi);
		// complement of the above distribution
		for (int i=0; i<subset_PMIs.length; i++) {
			subset_PMIs[i] = 1 - subset_PMIs[i];
		}
		Multinomial mult = new Multinomial(subset_PMIs);
		Link chosenLink = subset_links.get(mult.sample());
		mutated.delete(chosenLink);
		return mutated;
	}
	
	public Lexicon mutate_replace(Vector<Link> links, Vector<Double> pmi) {
		Lexicon mutated = new Lexicon(this.links);
		Lexicon temp = new Lexicon(links);
		if (temp.isSubsetOf(this) || (links.size()==0) || (mutated.links.size()==0)) {
			return mutated;
		}
		mutated = mutated.mutate_delete(links, pmi);
		return mutated.mutate_add(links, pmi);
	}
	
	
///////////////////////////////////////////////// utility functions/////////////////////////////////////////////////
	public double[] project(Vector<Link> links,Vector<Link> allLinks, Vector<Double> allPMIs) {
		// projects links to their corresponding pmis
		int range = links.size();
		double[] pmis = new double[range];
		for (int i=0; i<range; i++) {
			pmis[i] = allPMIs.get(links.get(i).indexIn(allLinks));
		}
		return pmis;
	}
	
	public Vector<Double> project(Vector<Link> links,Vector<Link> allLinks, Vector<Double> allPMIs, String vec) {
		// projects links to their corresponding pmis
		int range = links.size();
		Vector<Double> pmis = new Vector<Double>();
		for (int i=0; i<range; i++) {
			pmis.add(allPMIs.get(links.get(i).indexIn(allLinks)));
		}
		return pmis;
	}

	public Vector<Integer> projectInt(Vector<Link> links,Vector<Link> allLinks, Vector<Integer> freqs, String vec) {
		// projects links to their corresponding pmis
		int range = links.size();
		Vector<Integer> f = new Vector<Integer>();
		for (int i=0; i<range; i++) {
			f.add(freqs.get(links.get(i).indexIn(allLinks)));
		}
		return f;
	}
	
	public void printLinks(Vector<Link> ls) {
		for (int i=0; i<ls.size(); i++) {
			System.out.println(ls.get(i).wd);
			System.out.println(ls.get(i).obj);
		}
	}

}
