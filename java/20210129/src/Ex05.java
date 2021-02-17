
public class Ex05 {
	public static void main(String[] args) {
		int a = 10;
		System.out.println(a++); // 후위 - 여기선 10으로 나오고 다음 줄부터 11로 증가 됨
		System.out.println(a);	 // 10에서 후회로 증가된 11이 나옴
		System.out.println(++a); // 선위 - 11에서 1이 앞에서 더해지기 12로 출력됨
		System.out.println(a); // 12
		
		System.out.println(a--); // 흐위감소 - 12출력하고 다음줄 부터 11로 감소
		System.out.println(a); // 12에서 1 감소된 11나옴
		System.out.println(--a); // 11에서 1을 앞에서 빼줘서 10으로 나옴
		System.out.println(a); // 10으로 나옴
		
		
		// 0 0 = 0 -> 1
		// 1 0 = 1 -> 0
		// 0 1 = 1 -> 0
		// 1 1 = 0 -> 
		//
	
}
}
