package HW;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class CallProcedure_update {


	public void update() {
		// TODO Auto-generated method stub
		Connection conn = null; // DB����� ����(����)�� ���� ��ü
        PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
        ResultSet rs = null;  // �������� �����Ϳ� ���� ��ȯ���� ���� ��ü
		try {	
			int count =0;
			EMP_1[] emp = new EMP_1[50];
//			 Class.forName("oracle.jdbc.driver.OracleDriver");
//			 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","123456");
			conn = DBConnection.getConnection();
			 // ���ν��� ȣ��
			 CallableStatement cs = conn.prepareCall("begin update_emp_1(?,?,?,?,?,?,?,?); end;");
			 // �Է� �Ķ����
			 Scanner sc = new Scanner(System.in);
			 System.out.println("������ �����ȣ : ");
			 int empno = sc.nextInt();
			 cs.setInt(1,empno);
			 System.out.println("������ ����̸� : ");
			 String ename = sc.next();
			 cs.setString(2, ename);
			 System.out.println("������ ���� : ");
			 String job = sc.next();
			 cs.setString(3, job);
			 System.out.println("������ ������ : ");
			 String mgr = sc.next();
			 cs.setString(4, mgr);
			 System.out.println("������ �Ի����� : ");
			 int hiredate = sc.nextInt();
			 cs.setInt(5, hiredate);
			 System.out.println("������ ���� : ");
			 int sal = sc.nextInt();
			 cs.setInt(6, sal);
			 System.out.println("������ comm : ");
			 int comm = sc.nextInt();
			 cs.setInt(7, comm);
			 System.out.println("������ �μ���ȣ : ");
			 int deptno = sc.nextInt();
			 cs.setInt(8, deptno);
			 int seq= cs.executeUpdate();
//			 ResultSet rs = (ResultSet)cs.getObject(1);
			 
			 
//			 rs.close();
			 cs.close();
			 conn.close();
			 } catch(Exception e){
			 e.printStackTrace();
			 }
	}
	
}