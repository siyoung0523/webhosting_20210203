
public class Ex02 {

	public static void main(String[] args) {
		System.out.println(doA()); //5���
		System.out.println(doB()); //1.2���
		doC();
	}
	
	public static int doA() {
		return 5;
		}
	public static double doB() {
		return 1.2;
		}
	public static void doC() {
		for(int i =1; i < 10; i++){
			if(i==5)
				return; //break�� ��� but, for���� ���������°� �ƴ϶� �Լ��� ��������.
			System.out.println("i = " +i);
		}
	}
}
