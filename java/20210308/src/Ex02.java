
public class Ex02 {
	public static void main(String[] args) {
//		doA();
		doB();
		Ex02 ex02 = new Ex02();
		ex02.doA();
	}
	
	public void doA(){ //static이 아닌 것
		System.out.println("A 함수 입니다.");
	}
	

	public static void doB(){ //static인 것
		System.out.println("B 함수 입니다.");

	}
}
