import java.util.Scanner;

public class Ex02 {
	Ex02(){
		Scanner scan = new Scanner(System.in);
		System.out.println("배열 길이 입력: ");
		int len = scan.nextInt();
		// int arr[5]; <- c언어에선 이렇게 해야하는데 java는 나중에 해줘도됨 동적인 특징.
		int arr[] = new int[len]; // <- 자바는 이렇게 설정
		
		System.out.println("arr.length = "+arr.length);
		scan.close();
	}
	
	public static void main(String[] args) {
		new Ex02();
	}
}
