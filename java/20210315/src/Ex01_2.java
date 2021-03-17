class A{
	int a = 20;
	int b = 30;
	public void doA(){
		System.out.println("doA 함수입니다." );
	}
}

public class Ex01_2 extends A{ //Ex01_2 클래스가 A에게 상속받음.
	int c = 40;
	Ex01_2(){
		System.out.println(a);
		System.out.println(b);
		doA();//doA도 상속받음
	}
	
	public static void main(String[] args) {
		Ex01_2 aa = new Ex01_2();
	}
}
