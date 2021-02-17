
public class Ex04 {
	
	public static void main(String[] args) {
		
		boolean a = true;
		boolean b = false;
		int c = 10;
		int d = 10;
		
		System.out.println("a && b="+ (a && b)); //and <- a와 b 모두가 t여야 t가 나옴
		System.out.println("a || b="+ (a || b)); // or <- a, b 둘중 하나만 t여도 t
		
		System.out.println("a && b="+ (a && ( (c = 20)==20 ) ));
		System.out.println("a && b="+ (b && ( (d = 20)==20 ) ));
		
		
		System.out.println("c = "+c);
		System.out.println("d = "+d);
	}
}
