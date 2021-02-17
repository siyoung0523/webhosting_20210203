
public class Ex02 {
	public static void main(String[] args) {
		int a = 10;
		// 10 -> 0000 1010
		//'<<2'비트연산 2칸 옮기라는 뜻   0010 1000 -> 40
		//'>>1'비트연산 1칸 옮기라는 뜻   0000 0101 -> 5
		System.out.println("a<<2 = "+(a<<2));
		System.out.println("a<<2 = "+(a>>1));

	
	}
}
