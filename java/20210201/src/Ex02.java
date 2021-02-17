/*
 * 1이상 100미만인 정수 주 ㅇ에서 7의 배수와 9의 배수를 출력하는 프로그램
 * 단 7의 배수이면서 9의 배수인것은 한번만 출력
 */

public class Ex02 {

	public static void main(String[] args) {
		int i = 1;
		while(i<100){
			i++;
			if( i % 7 == 0){
				System.out.println("i = " +i);
				continue;
			}
			if( i % 9 == 0 ){
				System.out.println("i = " +i);
				continue;
			}
		}
	}
}