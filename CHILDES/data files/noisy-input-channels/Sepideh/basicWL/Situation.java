package basicWL;
import java.util.Vector;

public class Situation {
	public Vector<String> utterance;
	public Vector<String> scene;
	public int id;
	
	public Situation(Vector<String> u, Vector<String> s, int n) {
		utterance = new Vector<String>(u);
		scene = new Vector<String>(s);
		id = n;
	}
	
	public Vector<String> getUtterance() {
		return this.utterance;
	}
	
	public Vector<String> getScene() {
		return this.scene;
	}
	
	public Vector<String> getUniqueWords() {
		return unique(this.utterance);
	}
	
	public Vector<String> getUniqueObjs() {
		return unique(this.scene);
	}
	
	public Vector<String> unique(Vector<String> entity) {
		Vector<String> unique = new Vector<String>();
		for(int i=0; i<entity.size(); i++) {
			if (!(unique.contains(entity.get(i)))) {
				unique.add(entity.get(i));
			}
		}
		return unique;
	}
	
	public Vector<Link> initLinks() {
		Vector<Link> l = new Vector<Link>();
		Vector<String> words = this.getUniqueWords();
		Vector<String> objects = this.getUniqueObjs();
		if ((!(objects.get(0).toString().equals("".toString()))) && (!(words.get(0).toString().equals("".toString())))) {			
			for (int i=0; i<words.size(); i++) {
				for (int j=0; j<objects.size(); j++) {
					l.add(new Link(words.get(i),objects.get(j)));
				}
			}
		}	
		return l;					
	}
	
}
