import java.util.*;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;
import static java.lang.Math.*;



public class Preprocess {
	
	
	public static void main(String[] args) throws IOException {

		Scanner utterance = new Scanner(new File("utterance.txt"));
		Scanner scene = new Scanner(new File("scene.txt"));
		FileWriter fw = new FileWriter(new File("data.r"), true);
		ArrayList sentence = new ArrayList();
		ArrayList objects = new ArrayList();
		int i = 1;
		while(utterance.hasNext() && scene.hasNext()) {
			sentence = new ArrayList<String>(Arrays.asList(utterance.nextLine().trim().split("[, ]")));
			objects = new ArrayList<String>(Arrays.asList(scene.nextLine().trim().split("[, ]")));

			fw.write("uttered[["+String.valueOf(i)+"]]<-c(");
			for (int j=0;j<sentence.size();j++) {
				if (j+1==sentence.size()) {
					fw.write("\""+sentence.get(j)+"\")\n");
				}
				else {
					fw.write("\""+sentence.get(j)+"\",");
				}
			}
			
			fw.write("visible[["+String.valueOf(i)+"]]<-c(");
			for (int j=0;j<objects.size();j++) {
				if (j+1==objects.size()) {
					fw.write("\""+objects.get(j)+"\")\n\n");
				}
				else {
					fw.write("\""+objects.get(j)+"\",");
				}
			}
			i = i +1;
		
		}

		fw.close();

	}

}
