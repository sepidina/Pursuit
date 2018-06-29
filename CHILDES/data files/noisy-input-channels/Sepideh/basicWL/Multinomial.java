package basicWL;
import java.util.Random;

public class Multinomial {
	public static Random generator = new Random();
	public double[] cdf;
	public double[] pdf;
	public int range;

	//Constructor
	public Multinomial(double[] probabilities) {
		range = probabilities.length + 1;
		// We build the cdf array one larger than the array of probabilities
		// to permit cdf[0] to act as a minimum bound for searching.
		// Otherwise each cdf value is a maximum bound.
		
		pdf = new double[range - 1];
		cdf = new double[range];
		double sumProb = 0;
		for (double value : probabilities){
			sumProb += value;
		}
		cdf[0] = 0;
		for (int i = 1; i < range; ++i){
			pdf[i - 1] = probabilities[i - 1] / sumProb; //normalization
			cdf[i] = cdf[i - 1] + pdf[i - 1];
		}
		cdf[range - 1] = 1.0;
	}
	
	public int sample() {
		// Straightforward binary search on an array of doubles to find
		// index such that cdf[i] is greater than random number while
		// cdf[i-1] is less.
		
		double key = generator.nextDouble();
		int mindex = 1;
		int maxdex = range - 1;
		int midpoint = mindex + (maxdex - mindex) / 2;
		while (mindex <= maxdex){
			// System.out.println(midpoint);
			if (key < cdf[midpoint - 1]){
				// This shouldn't ever produce an out of bounds error, since it's impossible
				// that the key will be less than 0, and thus impossible that the midpoint will ever be
				// zero.  I think.
				maxdex = midpoint - 1;
			}
			else if (key > cdf[midpoint]) {
				mindex = midpoint + 1;
			}
			else {
				return midpoint - 1;
				// minus one, because the whole distribution array is shifted one up from the
				// original probabilities array to permit distribution[0] to be a minbound.
			}
			midpoint = mindex + (int) Math.ceil((maxdex - mindex) / 2);
			// I use Math.ceil to avoid any possibility of midpoint = 0.
		}
		System.out.println("Error in multinomial sampling method.");
		return range - 1;
	}
	
	public int[] sample(int n) {
		// Sampling with replacement for n number of times
		int[] sampled = new int[n];
		for (int i=0 ; i<n; i++){
			sampled[i] = sample();
		}
		return sampled;
	}
	
	
}
