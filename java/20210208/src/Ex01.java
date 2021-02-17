public class Ex01 {

	public static void main(String[] args) {
			
		// 배열의 길이를 구하기 위해 length가 있음
		// sizeof(args)/sizeof(int)
		
		for(int i = 0; i <args.length;i++){
			System.out.println("args = "+args[i]);
		}
	}
}

