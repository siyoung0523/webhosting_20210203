package spro.com.org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SPRO_DBManager {

	public int ckLogin(String id, String pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			pstmt = conn.prepareStatement(""
					+ "SELECT * FROM SPRO_MEMBER WHERE ID = ?  AND  PW = ? "
					+"");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery(); //executeQuery하면 rs에 쿼리가 담김.
			if(rs.next()) {
				//table 가져온게 있음..
				return 0; // 가져온게 있어서 login success
			}
			else {
				return -1; // 가져온게 없어서 login fail
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
		}catch(Exception ex) {
			
		}
		}
	}
}


