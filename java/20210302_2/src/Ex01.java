
public class Ex01 {
	static int a = 10;
	
	Ex01(){
		System.out.println("a++ = " + (a++));
	}
	
	public static void main(String[] args) {
		Ex01 e1 = new Ex01();
		System.out.println("e1.a="+e1.a);
		Ex01 e2 = new Ex01();
		System.out.println("e2.a="+e2.a);
		Ex01 e3 = new Ex01();
		System.out.println("e3.a="+e3.a);
		
		System.out.println("Ex01.a ="+Ex01.a);
	}
}
