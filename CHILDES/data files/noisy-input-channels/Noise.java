import java.util.*;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;
import static java.lang.Math.*;

public class Noise {
    public static double visionN = 0;
    public static double speechN = 0.2;
    public static Vector<String> speechdict = new Vector<String>();
    public static Vector<String> visiondict = new Vector<String>();
    public static void main(String[] args) throws IOException {
        loadDict("speechDict.txt",speechdict);
        loadDict("visionDict.txt",visiondict);

        applynoise("utterance.txt","noisyUtterance.txt", speechN, speechdict);
        applynoise("scene.txt", "noisyScene.txt", visionN, visiondict);
    }

    private static void loadDict(String dictF, Vector<String> dict) throws IOException {
        Scanner scanner = new Scanner(new File(dictF));
        while (scanner.hasNext()) {
            dict.add(scanner.next());
        }
        scanner.close();
    }

    private static void applynoise(String inputF, String outputF, double noise, Vector<String> dict) throws IOException {
        Vector<String> trial = new Vector<String>();
        FileWriter fw = new FileWriter(new File(outputF), true);
        Scanner scanner = new Scanner(new File(inputF));
        while(scanner.hasNext()){
            trial = new Vector<String>(Arrays.asList(scanner.nextLine().trim().split("\\s+")));
            Random random = new Random();
            for (int i = 0; i < trial.size(); i++) {
                if (random.nextFloat() <= noise) {
                    int correctIndex = dict.indexOf(trial.get(i));
                    int wrongIndex = random.nextInt(dict.size() - 2);
                    wrongIndex = (wrongIndex == correctIndex) ? (dict.size() - 1) : wrongIndex;
                    trial.set(i, dict.get(wrongIndex));
                }
            }
            for (int k=0;k<trial.size();k++) {
                fw.write(trial.get(k)+ " ");    
            }
            fw.write("\n");
        }
        fw.close();
        scanner.close();    
    }
    
}