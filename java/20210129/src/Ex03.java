
public class Ex03 {
	public static void main(String[] args) {
		short a = 10;
		//a = a * 20L; // a <short형과 long형  형태가 맞지 않음
		a = (short) (a*20L); // (short)를 입력함으로써 강제 형변환을 해줌
		System.out.println("a=" +a);
		
		int b = 20;
		//b = (20*3.5); // int형과 double형 형태가 맞지 않음
		b = (int) (20*3.5); // (int)를 입력함으로써 강제 형변환을 해줌
		System.out.println("b= "+b);
		
		System.out.println("a>b =" +(a>b));
		System.out.println("a<b =" +(a<b));
		
		System.out.println("a==b =" +(a==b));
		System.out.println("a!=b =" +(a!=b));
	}
}
