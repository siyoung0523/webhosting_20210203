class AccessWay{
	public static int a = 10;
	public AccessWay(){
			inCreA();
	}
	public void inCreA(){
		a++;
	}
}
public class Ex02 {
	public static void main(String[] args) {
		AccessWay aw = new AccessWay();
		System.out.println(aw.a);
		System.out.println(AccessWay.a);
		AccessWay.a++;
		System.out.println(aw.a);
		System.out.println(AccessWay.a);
	}
}
