package spro.com.org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SPRO_DBManager {

	public SPRO_MEMBER ckLogin(String id, String pw) { // int형이 반환되는 것이 아니라 return이 SPRO_MEMBER를 반환하기에 넣음.
		SPRO_MEMBER member = null;						//why? ckLogin메서드 호출 시,하나의 값만 반환하는게 아니라 id,pw,name,phone 여러 값을 리턴해야 하기 때문에

		
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
				member = new SPRO_MEMBER();
				member.setId(id);
				member.setPw(pw);
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				//table 가져온게 있음.. [ rs에 한 행이라도 있으면 이쪽으로 ]
//				return 0; // 가져온게 있어서 login success
			}
			
		}catch (Exception e) {
			e.printStackTrace();
//			return -1;
		}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
		}catch(Exception ex) {
			
		}
		}
		return member;

	}
}


