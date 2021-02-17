import aa.Abs;

public class Ex02 {

	public static void main(String[] args) {
		Abs abs = new Abs();
		abs.doAbs(10, 5);
		abs.doAbs(5, 10);
		
		System.out.println(Math.abs(-1));
		System.out.println(Math.abs(10-5));
		System.out.println(Math.abs(5-10));
	}
}
