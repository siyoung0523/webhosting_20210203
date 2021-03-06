package HW;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class CallProcedure_update {


	public void update() {
		// TODO Auto-generated method stub
		Connection conn = null; // DB연결된 상태(세션)을 담은 객체
        PreparedStatement pstm = null;  // SQL 문을 나타내는 객체
        ResultSet rs = null;  // 쿼리문을 날린것에 대한 반환값을 담을 객체
		try {	
			int count =0;
			EMP_1[] emp = new EMP_1[50];
//			 Class.forName("oracle.jdbc.driver.OracleDriver");
//			 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","123456");
			conn = DBConnection.getConnection();
			 // 프로시저 호출
			 CallableStatement cs = conn.prepareCall("begin update_emp_1(?,?,?,?,?,?,?,?); end;");
			 // 입력 파라메터
			 Scanner sc = new Scanner(System.in);
			 System.out.println("수정할 사원번호 : ");
			 int empno = sc.nextInt();
			 cs.setInt(1,empno);
			 System.out.println("수정할 사원이름 : ");
			 String ename = sc.next();
			 cs.setString(2, ename);
			 System.out.println("수정할 직무 : ");
			 String job = sc.next();
			 cs.setString(3, job);
			 System.out.println("수정할 관리자 : ");
			 String mgr = sc.next();
			 cs.setString(4, mgr);
			 System.out.println("수정할 입사일자 : ");
			 int hiredate = sc.nextInt();
			 cs.setInt(5, hiredate);
			 System.out.println("수정할 연봉 : ");
			 int sal = sc.nextInt();
			 cs.setInt(6, sal);
			 System.out.println("수정할 comm : ");
			 int comm = sc.nextInt();
			 cs.setInt(7, comm);
			 System.out.println("수정할 부서번호 : ");
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
