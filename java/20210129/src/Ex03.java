
public class Ex03 {
	public static void main(String[] args) {
		short a = 10;
		//a = a * 20L; // a <short���� long��  ���°� ���� ����
		a = (short) (a*20L); // (short)�� �Է������ν� ���� ����ȯ�� ����
		System.out.println("a=" +a);
		
		int b = 20;
		//b = (20*3.5); // int���� double�� ���°� ���� ����
		b = (int) (20*3.5); // (int)�� �Է������ν� ���� ����ȯ�� ����
		System.out.println("b= "+b);
		
		System.out.println("a>b =" +(a>b));
		System.out.println("a<b =" +(a<b));
		
		System.out.println("a==b =" +(a==b));
		System.out.println("a!=b =" +(a!=b));
	}
}
