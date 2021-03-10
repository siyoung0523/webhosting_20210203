

public class Ex07 {
	public static void main(String[] args) {
		for(int i=0; i<10; i++){
			Accumulator.add(i);
		}
		Accumulator.showResult();
		//Accumulator.sum  sum이 private이기에 호출 불가능
	}
	/*
	 * 실행결과로 sum =45출력
	 */
}
