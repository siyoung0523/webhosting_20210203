/*
 * ���� 3
 * �л��� ��ü ��������� ���� ������ ���
 * ���� ���� ���� �Է¹޾ƶ�
 * ������ ����
 * 90���̻� A
 * 80���̻� B
 * 70���̻� C
 * 60���̻� F
 * �̷��� ���
 */
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex04 {
	public static void main(String[] args) throws NumberFormatException, IOException{ 
		int kor = 0;
		int eng = 0;
		int math = 0;
		int avg = 0;
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("�������� :");
		kor = Integer.parseInt(br.readLine());
		System.out.println("�������� :");
		eng = Integer.parseInt(br.readLine());
		System.out.println("�������� :");
		math = Integer.parseInt(br.readLine());
		
		avg = (kor+eng+math)/3;
		System.out.println("avg = "+avg);
		if(avg >=90)
			System.out.println("90�� �̻� A����");
		else if(avg >=80)
			System.out.println("80���̻� B����");
		else if(avg >=70)
			System.out.println("70�� �̻� C����");
		else
			System.out.println("F����");
		
	
	}
}
