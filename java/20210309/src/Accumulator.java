
public class Accumulator {
	private static int sum = 0;
	public static void add(int i){
		sum += i;
	}
	public static void showResult(){
		System.out.println("sym ="+sum);
	}
}
