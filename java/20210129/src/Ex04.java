
public class Ex04 {
	
	public static void main(String[] args) {
		
		boolean a = true;
		boolean b = false;
		int c = 10;
		int d = 10;
		
		System.out.println("a && b="+ (a && b)); //and <- a�� b ��ΰ� t���� t�� ����
		System.out.println("a || b="+ (a || b)); // or <- a, b ���� �ϳ��� t���� t
		
		System.out.println("a && b="+ (a && ( (c = 20)==20 ) ));
		System.out.println("a && b="+ (b && ( (d = 20)==20 ) ));
		
		
		System.out.println("c = "+c);
		System.out.println("d = "+d);
	}
}
