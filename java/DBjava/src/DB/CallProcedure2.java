package DB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CallProcedure2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn = null; // DB����� ����(����)�� ���� ��ü
        PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
        ResultSet rs = null;  // �������� �����Ϳ� ���� ��ȯ���� ���� ��ü
		try {	
			int count =0;
			BUYTBL[] buytbl = new BUYTBL[50];
//			 Class.forName("oracle.jdbc.driver.OracleDriver");
//			 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","123456");
			conn = DBConnection.getConnection();
			 // ���ν��� ȣ��
			 CallableStatement cs = conn.prepareCall("begin update_buytbl(?,?,?,?,?); end;");
			 // �Է� �Ķ����
			 cs.setInt(1, 30);
			 cs.setString(2, "�����");
			 cs.setString(3, "����");
			 cs.setInt(4, 300);
			 cs.setInt(5, 1);
			 int seq= cs.executeUpdate();
//			 ResultSet rs = (ResultSet)cs.getObject(1);
			 
			 if ( seq ==0 )
			 {
				 System.out.println(seq+"��");
			 }
			 else
			 {
				 System.out.println(seq+"��");
			 }
			 
//			 rs.close();
			 cs.close();
			 conn.close();
			 } catch(Exception e){
			 e.printStackTrace();
			 }
	}

}
