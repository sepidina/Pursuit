package basicWL;
import java.util.Vector;

public class Link {
	public String obj;
	public String wd;
	
	public Link(String word, String object) {
		obj = object;
		wd = word;
	}
	
	public boolean isMemberOf(Vector<Link> v) {
		for (int i=0; i<v.size(); i++) {
			if (this.isEqual(v.get(i))) {
				return true;
			}
		}
		return false;
	}
	
	public boolean isEqual(Link v2) {
		if (obj.toString().equals(v2.obj.toString()) && wd.toString().equals(v2.wd.toString())) {
			return true;
		}
		return false;
	}
	
	public Vector<Link> unique(Vector<Link> links) {
		Vector<Link> uniq = new Vector<Link>();
		for (int i=0; i<links.size(); i++) {
			if (!(links.get(i).isMemberOf(uniq))) {
				uniq.add(links.get(i));
			}
		}
		return uniq;
	}
	
	public int indexIn(Vector<Link> v) {
		int indx = 0;
		for (int i=0; i<v.size(); i++) {
			if (this.isEqual(v.get(i))) {
				return indx;
			}
			indx = indx + 1;
		}
		return -99;
	}
}
