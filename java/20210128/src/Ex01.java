
public class Ex01 {
	
	public static void main(String[] args) {
		int a = 10;
		final int b = 20; // ���
		
		System.out.println(" a = "+a);
		System.out.println(" b = "+b);
		
		a=30;
//		b=40; //final �̶�� ������ ����̱⿡ �ʱ�ȭ�� �ȵ�.
		
		System.out.println(" a = "+a);
		System.out.println(" b = "+b);
	}
}
