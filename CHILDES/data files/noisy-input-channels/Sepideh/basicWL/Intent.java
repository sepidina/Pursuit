package basicWL;
import java.util.Vector;

public class Intent {
	public Vector<String> refs;
	
	public Intent() {
		refs = new Vector<String>();
	}
	
	public Intent(Vector<String> r) {
		refs = new Vector<String>(r);
	}

}
