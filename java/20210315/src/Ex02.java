import java.util.Scanner;

public class Ex02 {
	Ex02(){
		Scanner scan = new Scanner(System.in);
		System.out.println("�迭 ���� �Է�: ");
		int len = scan.nextInt();
		// int arr[5]; <- c���� �̷��� �ؾ��ϴµ� java�� ���߿� ���൵�� ������ Ư¡.
		int arr[] = new int[len]; // <- �ڹٴ� �̷��� ����
		
		System.out.println("arr.length = "+arr.length);
		scan.close();
	}
	
	public static void main(String[] args) {
		new Ex02();
	}
}
