package spro.com.org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Default {

	
	public int seat_useInsert(String seat,String name,String phone,String m_time) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName(DBInfo.mysql_class);

			conn = DriverManager.getConnection(DBInfo.mysql_url, DBInfo.mysql_id, DBInfo.mysql_pw);
			
			// 블럭 지정 후 ctrl+ shift + x 대문자 지정
			// 블럭 지정 후 ctrl+ shift + y 소문자 지정
			pstmt = conn.prepareStatement(
					"INSERT INTO "+ 
					"SEAT_USE "+
					"(NUM,NAME,PHONE,M_TIME) "+
					"VALUES "+
					"(?,?,?,?)");
			
			pstmt.setString(1, seat);
			pstmt.setString(2, name);
			pstmt.setString(3, phone);
			pstmt.setString(4, m_time);
			
			int ret = pstmt.executeUpdate();
			if(ret > 0 ){
				System.out.println("정상적으로 insert됨");
				return ret;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			try{
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception ex){
				
			}
		}
		return 0;
	}
}
