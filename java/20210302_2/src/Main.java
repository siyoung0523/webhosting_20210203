import java.io.BufferedReader;
import java.io.Console;
import java.io.InputStreamReader;
import java.util.Scanner;

public class Main {
	/*
	 * 1. �л����
	 * 2. �л���ȸ
	 * 
	 * 3. �л�����
	 * 4. �л�����
	 * 5. �л� ���Ϸ� ����
	 */
	
	public static Student inputStudent(){
		Scanner scan = new Scanner(System.in);
		System.out.println("�̸���? ");
		String name = scan.nextLine();
		System.out.println("������? ");
		String gender = scan.nextLine();
		System.out.println("����?");
		int age = scan.nextInt();
		Student stu = new Student(name, gender, age);
		return stu;
	}
	public static void main(String[] args) {
		// C#, java, python...
		// c malloc free �������� �޸��Ҵ�...
		// ArrayList... Haspmap...
		// python... �迭...�������� �޸��Ҵ�..
		Student[] student = new Student[50];
//		System.out.println("student[0]="+student[0]);
//		System.out.println("student[1]="+student[1]);
//		System.out.println("student[2]="+student[2]);
		
		Scanner scan = new Scanner(System.in);
		while(true){
			System.out.println("���ҷ���? 1,2,3,4 ����");
			int select = scan.nextInt();
			System.out.println("select = "+ select);
			if(select ==1){
				//�л����
				Student stu = inputStudent();
				for(int i = 0; i< student.length ; i++){
					if( student[i] == null ){
						student[i] = stu;
						break;
					}
				}
			}
			else if(select==2)
			{
				System.out.println("===�л���ȸ===");
				for(int i=0; i<student.length;i++){
//					System.out.println(i+" = "+student[i]);
					if(student[i] != null)
						student[i].print();
				}
				System.out.println("============");
			}
			else if(select==3)
			{
				System.out.println("�����ϰ� ���� �л� ��ȣ �Է� : ");
				int num = scan.nextInt();
				
				Student stu = inputStudent();
				student[num] = stu;
				
				System.out.println("�����Ǿ����ϴ�.");
			}
			else if(select==4)
			{
				System.out.println("�����ϰ� ���� �л� ��ȣ �Է� : ");
				int num = scan.nextInt();
				student[num] = null;
				System.out.println("�����Ǿ����ϴ�.");
			}
			else{
				System.out.println("����˴ϴ�.");
				break;
			}
		}
	}
}