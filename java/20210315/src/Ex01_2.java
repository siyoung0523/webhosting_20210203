class A{
	int a = 20;
	int b = 30;
	public void doA(){
		System.out.println("doA �Լ��Դϴ�." );
	}
}

public class Ex01_2 extends A{ //Ex01_2 Ŭ������ A���� ��ӹ���.
	int c = 40;
	Ex01_2(){
		System.out.println(a);
		System.out.println(b);
		doA();//doA�� ��ӹ���
	}
	
	public static void main(String[] args) {
		Ex01_2 aa = new Ex01_2();
	}
}
