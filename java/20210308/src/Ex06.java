//메소드 오버로딩
//생성자 오버로딩
public class Ex06 {
	Ex06(){}
	Ex06(int a){System.out.println("a ="+a);}
	
	public static void doA(int a){
		System.out.println("a ="+a);
	}
	public static void doA(int a, int b){
		System.out.println("a ="+a);
		System.out.println("b ="+b);
	}
	
	public static void main(String[] args) {
		doA(5);
		doA(5,10);
		Ex06 ex01 = new Ex06();
		Ex06 ex01_1 = new Ex06(10);
	}
}

