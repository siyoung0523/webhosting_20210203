
public class Ex02 {
	public static void main(String[] args) {
//		doA();
		doB();
		Ex02 ex02 = new Ex02();
		ex02.doA();
	}
	
	public void doA(){ //static�� �ƴ� ��
		System.out.println("A �Լ� �Դϴ�.");
	}
	

	public static void doB(){ //static�� ��
		System.out.println("B �Լ� �Դϴ�.");

	}
}
