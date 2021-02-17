
public class Ex01 {
	
	public static void main(String[] args) {
		int a = 10;
		final int b = 20; // 상수
		
		System.out.println(" a = "+a);
		System.out.println(" b = "+b);
		
		a=30;
//		b=40; //final 이라고 적으면 상수이기에 초기화가 안됨.
		
		System.out.println(" a = "+a);
		System.out.println(" b = "+b);
	}
}
