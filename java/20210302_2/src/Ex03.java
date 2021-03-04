class A{
	A(){
		AccessWay.a++;
		System.out.println("AccessWay.a =" +AccessWay.a);
	}
}
class B{
	B(){
		AccessWay.a++;
		System.out.println("AccessWay.a =" +AccessWay.a);
	}
}
class C{
	C(){
		AccessWay.a++;
		System.out.println("AccessWay.a =" +AccessWay.a);
	}
}
public class Ex03 {
	public static void main(String[] args) {
		new A(); new B(); new C();
	}
}
