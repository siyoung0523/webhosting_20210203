
public class Ex02 {

	public static void main(String[] args) {// main ctrl space
		
		// A + B =AB
		// 1+ 2 =3
		// "1" + "2" = 12
		//라인 맞추기(자동 들여쓰기) ctrl | shift + f
		// tab -> 이동
		// shift + tab <- 이동
		
		System.out.println("2 + 5 = " + 2 + 5);// 25 "문자열" + 숫자열 -> 나열
		System.out.println("2 + 5 = " + (2 + 5));// 7 why? 괄호는 앞의 문자열 부터 순서대로
													// 하는게 아니라 괄호부터 시작 ! 그래서
													// 7이리고 하고, 문자열 더함

		System.out.println(12);
		System.out.println("1" + "2");
		System.out.println("1" + 2);
		System.out.println(1 + "2");
		System.out.println("" + 1 + 2);
	}
}
