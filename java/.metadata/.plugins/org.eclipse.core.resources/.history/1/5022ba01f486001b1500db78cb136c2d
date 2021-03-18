package HW;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import DB.BUYTBL;
import DB.DBConnection;

public class CallProcedure_delete {

	public void delete() {
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
			 CallableStatement cs = conn.prepareCall("begin delete_emp_1(?); end;");
			 // 입력 파라메터
			 Scanner sc = new Scanner(System.in);
			 System.out.println("삭제할 사원번호 : ");
			 int empno = sc.nextInt();
			 cs.setInt(1,empno);
			 int seq= cs.executeUpdate();
//			 ResultSet rs = (ResultSet)cs.getObject(1);
			 

//			 rs.close();
			 cs.close();
			 conn.close();
			 } catch(Exception e){
			 e.printStackTrace();
			 }
		finally{
            // DB 연결을 종료한다.
            try{
                if ( rs != null ){rs.close();}   
                if ( pstm != null ){pstm.close();}   
                if ( conn != null ){conn.close(); }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
		}
	}
	
}
