interface AAA{
	public void dofunction();
}
public class Ex03 {
	public static void main(String[] args) {
		AAA aaa = () ->{};
		aaa.dofunction();
	}
}
