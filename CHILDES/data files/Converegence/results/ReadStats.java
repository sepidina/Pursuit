import java.util.*;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;
import static java.lang.Math.*;


public class ReadStats {
	public static int nExperiment = 40;
	public static double[] precision = new double[nExperiment];
	public static double[] recall = new double[nExperiment];
	public static double[] fscore = new double[nExperiment];

	public static void main(String[] args) throws IOException {
		double sum_p = 0;
		double sum_r = 0;
		double sum_fscore = 0;
		double max_fscore = -99;
		double max_precision = -99;
		double max_recall = -99;
		double min_fscore = 99;
		double min_precision = 99;
		double min_recall = 99;
		double std_fscore = 0;
		double std_precision = 0;
		double std_recall = 0;

		loadStats("results_dataX4.txt");
		
		for (int i=0;i<nExperiment;i++) {

			sum_p = sum_p + precision[i];
			sum_r = sum_r + recall[i];
			sum_fscore = sum_fscore + fscore[i];
			if (precision[i]<min_precision) {
				min_precision = precision[i];
			}
			if (precision[i]>max_precision) {
				max_precision = precision[i];
			}
			if (recall[i]<min_recall) {
				min_recall = recall[i];
			}
			if (recall[i]>max_recall) {
				max_recall = recall[i];
			}
			if (fscore[i]<min_fscore) {
				min_fscore = fscore[i];
			}
			if (fscore[i]>max_fscore) {
				max_fscore = fscore[i];
			}
		}
		FileWriter fw = new FileWriter(new File("results_dataX4.txt"), true);
		fw.write("***********************************************************"+"\n");
		fw.write("mean-precision:"+String.valueOf(sum_p/nExperiment)+"\n");
		fw.write("mean-recall:"+String.valueOf(sum_r/nExperiment)+"\n");
		fw.write("mean-fscore:"+String.valueOf(sum_fscore/nExperiment)+"\n\n");
		fw.write("max-precision:"+String.valueOf(max_precision)+"\n");
		fw.write("max-recall:"+String.valueOf(max_recall)+"\n");
		fw.write("max-fscore:"+String.valueOf(max_fscore)+"\n\n");
		fw.write("min-precision:"+String.valueOf(min_precision)+"\n");
		fw.write("min-recall:"+String.valueOf(min_recall)+"\n");
		fw.write("min-fscore:"+String.valueOf(min_fscore)+"\n\n");
		fw.write("std-precision:"+String.valueOf(compute_std(precision, sum_p/nExperiment))+"\n");
		fw.write("std-recall:"+String.valueOf(compute_std(recall, sum_r/nExperiment))+"\n");
		fw.write("std-fscore:"+String.valueOf(compute_std(fscore, sum_fscore/nExperiment))+"\n");
		fw.close();
	}

	private static double compute_std(double[] numbers, double avg) {
		double sd = 0;
		for (int i=0;i<numbers.length;i++) {
			sd = sd + Math.pow((numbers[i] - avg),2);
		}
		return Math.sqrt(sd/(numbers.length - 1));
	}

	private static void loadStats(String inputF) throws IOException {
		Scanner scanner = new Scanner(new File(inputF));
		int p_i=0;
		int r_i=0;
		int f_i=0;
		while(scanner.hasNext()) {
			if (scanner.hasNext("precision:")) {
				scanner.next();
				precision[p_i] = scanner.nextDouble();
				System.out.println("precision:"+String.valueOf(precision[p_i]));
				p_i = p_i + 1;
			}
			else if (scanner.hasNext("recall:")) {
				scanner.next();
				recall[r_i] = scanner.nextDouble();
				System.out.println("recall:"+String.valueOf(recall[r_i]));
				r_i = r_i +1;
			}
			else if (scanner.hasNext("fscore:")) {
				scanner.next();
				fscore[f_i] = scanner.nextDouble();
				System.out.println("fscore:"+String.valueOf(fscore[f_i] ));
				f_i = f_i +1;
			}
			else {
				scanner.next();
			}
		}
	}
}
