class Accumulator{
	public static void add(int a){
		a += a;
	}
	
	public static void ShowResult(int b){
		System.out.println("sum ="+b);
	}
}


public class Q10_1 {
	public static void main(String[] args) {
		for(int i = 0; i < 10; i++)
			Accumulator.add(i);
		Accumulator.ShowResult(int i);
	}
}
