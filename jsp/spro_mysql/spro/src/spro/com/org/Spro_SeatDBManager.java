package spro.com.org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/*
 * mysql 데이터베이스와 연결해서
 * seatuse
 * select insert update delete 함수 구현
 */
public class Spro_SeatDBManager {

	public ArrayList<SPRO_SeatUse> select() {
		ArrayList<SPRO_SeatUse> list = new ArrayList<SPRO_SeatUse>();
		list.add(new SPRO_SeatUse());
		
		Connection conn = null; // DB 연결 객체 변수
		PreparedStatement pstmt = null; // SQL 만드는 객체
		ResultSet rs = null; // sql문 실행하고 반환 값 담는 객체 변수
		try {
			Class.forName(DBInfo.mysql_class); //jar파일이 추가되어있는지 필요
			conn = DriverManager.getConnection(DBInfo.mysql_url,DBInfo.mysql_id,DBInfo.mysql_pw);
			pstmt = conn.prepareStatement("select * from seat_use"); //이 sql문을 실행해서
			rs = pstmt.executeQuery(); //테이블의 내용이 rs에 담김. -> rs엔
			while(rs.next()) {//그다음 행이 있으면 true 없으면 false
				SPRO_SeatUse ssu = new SPRO_SeatUse();
				ssu.setM_time(rs.getInt("m_time"));
				ssu.setName(rs.getString("name"));
				ssu.setPhone(rs.getString("phone"));
				ssu.setNum(rs.getInt("num"));
				list.add(ssu); //list안에 위 정보 4개를 담음
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
		try{
			if(rs!= null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}catch(Exception e) {
			}
		}
		return list;
	}
}

