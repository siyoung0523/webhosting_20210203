import java.util.Scanner;

public class Main {
	/*
	 * 1.�л���� 2.�л���ȸ
	 * 3.�л����� 4.�л�����
	 */
	public static void main(String[] args) {
		Student[] student = new Student[50];

		Scanner scan = new Scanner(System.in);
		while (true) {
			System.out.println("���ҷ�? 1,2,3,4 ����");
			int select = scan.nextInt();
			System.out.println("select =" + select);

			if (select == 1) {
				scan.nextLine();
				System.out.println("�̸���?");

				String name = scan.nextLine();
				System.out.println("������?");

				String gender = scan.nextLine();
				System.out.println("����?");

				int age = scan.nextInt();
				student[0] = new Student(name, gender, age);
				// �л����
			} else if (select == 2) {
				// �л���ȸ2

				System.out.println("===�л���ȸ===");
				for (int i = 0; i < student.length; i++) {
					System.out.println(i + "=" + student[i]);
					if (student[i] != null) {
						student[i].print();
					}
				}
				System.out.println("=========");
			} 
			else if (select ==3){
				
				System.out.println("===�ٲ� �л��� �����Է�===");
				
				scan.nextLine();
				System.out.println("�̸���?");

				String name = scan.nextLine();
				System.out.println("������?");

				String gender = scan.nextLine();
				System.out.println("����?");

				int age = scan.nextInt();
				
				System.out.println("������ �ٲ� �л��� ��ȣ��?");
				int a = scan.nextInt();
				student[a-1] = new Student(name, gender, age);
				
			}
			
			else {
				System.out.println("����˴ϴ�.");
				break;
			}
		}
	}
}
