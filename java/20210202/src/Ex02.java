
public class Ex02 {

	public static void main(String[] args) {
		System.out.println(doA()); //5출력
		System.out.println(doB()); //1.2출력
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
				return; //break와 비슷 but, for문을 빠져나가는게 아니라 함수를 빠져나감.
			System.out.println("i = " +i);
		}
	}
}
