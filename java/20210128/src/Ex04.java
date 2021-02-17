/*
public class Ex04 {
	
	public static void main(String[] args) {
		
		int a = 10;
		double b = a;
		
		double c = 20.23d;
		int d = (int)c; //double이 int로 바뀔 때 소숫점이 날아가도 괜찮다를 명시적으로 변환하는 것.
		
		System.out.println("a =" +a);
		System.out.println("b =" +b);
		
		System.out.println("c =" +c);
		System.out.println("d =" +d);
	}
}
*/


/*
import java.util.Scanner;

public class Ex04 {
	
	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		System.out.println("소숫점 숫자 입력 :");
		double a = scan.nextDouble();
		System.out.println("a = "+a);
		
	}
}
*/

/*
  	*문제
  	*소수 둘째 자리까지 입력받아서 소수 첫째자리까지 출력하세요
  	*예시
  	*숫자입력 : 21.234
  	*츨력 : 21.23
  	*
  	*힌트 ->
  	*double 형은 int 형으로 바꿀때 소수점이 삭제 된다.
  	*21.234 -> int 21
  	*212.34 -> int 212
  	*2123.4 -> int 2123
  	*
  */

import java.util.Scanner;

public class Ex04 {
	
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("소수점 숫자 입력 :");
		
		double a = scan.nextDouble();
		System.out.println("a = "+a);
		
		a = a*100;
		System.out.println("a = "+a);
		int b = (int) a;
		System.out.println("b = "+b);
		double c = (double)b/100;
		System.out.println("출력 \n c=" +c);
		
		
	}
	
}

	