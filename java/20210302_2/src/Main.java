import java.util.Scanner;

public class Main {
	/*
	 * 1.학생등록 2.학생조회
	 * 3.학생수정 4.학생삭제
	 */
	public static void main(String[] args) {
		Student[] student = new Student[50];

		Scanner scan = new Scanner(System.in);
		while (true) {
			System.out.println("뭐할래? 1,2,3,4 선택");
			int select = scan.nextInt();
			System.out.println("select =" + select);

			if (select == 1) {
				scan.nextLine();
				System.out.println("이름은?");

				String name = scan.nextLine();
				System.out.println("성별은?");

				String gender = scan.nextLine();
				System.out.println("나이?");

				int age = scan.nextInt();
				student[0] = new Student(name, gender, age);
				// 학생등록
			} else if (select == 2) {
				// 학생조회2

				System.out.println("===학생조회===");
				for (int i = 0; i < student.length; i++) {
					System.out.println(i + "=" + student[i]);
					if (student[i] != null) {
						student[i].print();
					}
				}
				System.out.println("=========");
			} 
			else if (select ==3){
				
				System.out.println("===바꿀 학생의 정보입력===");
				
				scan.nextLine();
				System.out.println("이름은?");

				String name = scan.nextLine();
				System.out.println("성별은?");

				String gender = scan.nextLine();
				System.out.println("나이?");

				int age = scan.nextInt();
				
				System.out.println("정보를 바꿀 학생의 번호는?");
				int a = scan.nextInt();
				student[a-1] = new Student(name, gender, age);
				
			}
			
			else {
				System.out.println("종료됩니다.");
				break;
			}
		}
	}
}
