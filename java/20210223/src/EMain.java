import java.util.Scanner;



public class EMain {
	public static void main(String[] args) {
		Employee emp = new Employee();
//		emp.name = "ȫ�浿";
		Scanner scan = new Scanner(System.in);
		
		System.out.println("�̸� �Է��ض�");
		String name = scan.nextLine();
		emp.setName(name);
		
		System.out.println("�ֹι�ȣ �Է��ض�");
		String jumin = scan.nextLine();
		emp.setJumin(jumin);
		
		System.out.println("�޿� �Է��ض�");
		int sal = scan.nextInt();
		emp.setSal(sal);
		
		emp.doPrint();
		
		
	}
}