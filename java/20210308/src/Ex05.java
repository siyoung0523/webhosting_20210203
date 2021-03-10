class AAA{
	int a = 10;
	public static void doA(String a){
		System.out.println(a);
	}
	static{
		int b = 20;
		int c = 30;
	}
}

public class Ex05 {
	public static AAA aa = new AAA();
	
	public static void main(String[] args) {
		
		
		System.out.println("test");
		Ex05.aa.doA("test");
	}
}
