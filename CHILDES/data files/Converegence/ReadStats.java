import java.util.*;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;
import static java.lang.Math.*;


public class ReadStats {
	public static int nExperiment = 50;
	public static double[] fscore = new double[nExperiment];

	public static void main(String[] args) throws IOException {
	
		double sum_fscore = 0;
		double max_fscore = -99;
		double min_fscore = 99;
		double std_fscore = 0;
		
		loadStats("outfile_dataX2.txt");
		
		for (int i=0;i<nExperiment;i++) {
			System.out.println(fscore[i]);
			sum_fscore = sum_fscore + fscore[i];
			
			if (fscore[i]<min_fscore) {
				min_fscore = fscore[i];
			}
			if (fscore[i]>max_fscore) {
				max_fscore = fscore[i];
			}
		}
		FileWriter fw = new FileWriter(new File("outfile_dataX2.txt"), true);
		fw.write("***********************************************************"+"\n");
		fw.write("mean-fscore:"+String.valueOf(sum_fscore/nExperiment)+"\n\n");
		fw.write("max-fscore:"+String.valueOf(max_fscore)+"\n\n");
		fw.write("min-fscore:"+String.valueOf(min_fscore)+"\n\n");
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
		int f_i=0;
		while(scanner.hasNext()) {
			fscore[f_i] = scanner.nextDouble();
			System.out.println("fscore:"+String.valueOf(fscore[f_i] ));
			f_i = f_i +1;
		}
	}
}
