import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex05 {
	public static void main(String[] args) throws IOException{
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("입력: ");
		String a = br.readLine();
		System.out.println("a ="+a);
		
		int b = Integer.parseInt(a) + 10; //Integer.parseInt 문자형을 숫자형으로 바꾸
		System.out.println("b ="+b);
		
		String c = String.valueOf(b);
		System.out.println("c ="+c);
	}
}
