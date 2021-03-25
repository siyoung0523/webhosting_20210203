interface AA{
	public static final int a = 10;
	public void doA();
}
interface BB{
	int b = 20;
	public void doB();
}

public class Ex02 implements AA,BB {
	Ex02(){
		doA(); doB();
	}
	
	public static void main(String[] args) {
		new Ex02();
	}

	@Override
	public void doB() {
		System.out.println("a="+AA.a);
		System.out.println("b="+b);
	}

	@Override
	public void doA() {
		System.out.println("a="+a);
		System.out.println("b="+b);
	}
}
