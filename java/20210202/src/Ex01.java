
public class Ex01 {
	// ctrl + f11 �׳ɽ���
	// f11 ����� ��� ����
	
	// f5 ����� ��� ����
	// ctrl + f5 �׳� ����
	public static void main(String[] args) {
		System.out.println("���α׷� ����");
		doA(12);
		doA(13);
		System.out.println("���α׷� ��");
	}
	
	//�޼��� �����ε� ��� ... �Ű������� �ٸ��� ���� �̸� ��� ����
	public static void doA(int age) {
		System.out.println("doA����");
		System.out.println("age ="+age);
		System.out.println("doA��");
	}
	
	public static void doA(int age, int height) {
		System.out.println("doA����");
		System.out.println("age ="+age);
		System.out.println("doA��");
	}
}
