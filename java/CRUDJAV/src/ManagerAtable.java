import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class ManagerAtable {
	

	public void insertAtable(){
		String idx = null;
		String name = null;
		String gender = null;
		String remark = null;
		
		AtableMain.scan.nextLine();
		System.out.println("번호입력");
		idx = AtableMain.scan.nextLine();
		System.out.println("이름입력");
		name = AtableMain.scan.nextLine();
		System.out.println("성별입력");
		gender = AtableMain.scan.nextLine();
		System.out.println("비고입력");
		remark = AtableMain.scan.nextLine();
		// try 구문안에 있는 내용을 실행 하다가 에러가 발생하면 catch로 빠진다.
		/*
		 * 1. jar 파일 추가 확인 2. DB연결 3. SQL 구문작성
		 */
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			System.out.println("DB연결성공");
			pstmt = conn.prepareStatement(
					"INSERT INTO ATABLE " 
					+ "(IDX, NAME, GENDER, REMARK) " 
					+ "VALUES " 
					+ "(?,?,?,?)");
			pstmt.setString(1, idx);//물음표에 값 넣기
			pstmt.setString(2, name);
			pstmt.setString(3, gender);
			pstmt.setString(4, remark);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러 그 클래스 파일 없음");
		} finally {
			try {
				conn.close(); // 파일을 열었으면 닫아줘야함
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void updateAtable(){
		String idx = null;
		String name = null;
		String gender = null;
		String remark = null;
		
		AtableMain.scan.nextLine();
		System.out.println("번호입력");
		idx = AtableMain.scan.nextLine();
		System.out.println("이름입력");
		name = AtableMain.scan.nextLine();
		System.out.println("성별입력");
		gender = AtableMain.scan.nextLine();
		System.out.println("비고입력");
		remark = AtableMain.scan.nextLine();
		// try 구문안에 있는 내용을 실행 하다가 에러가 발생하면 catch로 빠진다.
		/*
		 * 1. jar 파일 추가 확인 2. DB연결 3. SQL 구문작성
		 */
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			System.out.println("DB연결성공");
			pstmt = conn.prepareStatement(
					"UPDATE ATABLE "+
					"SET NAME=?, GENDER=?, REMARK=? "+
					"WHERE IDX= ? ");  // oracle 에서 가져온(사용하는) 업데이트 구문 넣은 것
			pstmt.setString(1, name);//물음표에 값 넣기
			pstmt.setString(2, gender);
			pstmt.setString(3, remark);
			pstmt.setString(4, idx);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러 그 클래스 파일 없음");
		} finally {
			try {
				conn.close(); // 파일을 열었으면 닫아줘야함
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public void deleteAtable(){
		String idx = null;
		String name = null;
		String gender = null;
		String remark = null;
		
		// try 구문안에 있는 내용을 실행 하다가 에러가 발생하면 catch로 빠진다.
		/*
		 * 1. jar 파일 추가 확인 2. DB연결 3. SQL 구문작성
		 */
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			System.out.println("DB연결성공");
			pstmt = conn.prepareStatement("DELETE FROM ATABLE");
//			pstmt.setString(1, idx);//물음표에 값 넣기
//			pstmt.setString(2, name);
//			pstmt.setString(3, gender);
//			pstmt.setString(4, remark);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러 그 클래스 파일 없음");
		} finally {
			try {
				conn.close(); // 파일을 열었으면 닫아줘야함
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}
	
	
	public void selectAtable(){
		Connection conn=null; //DB 연결객체
		PreparedStatement pstmt=null;; //SQL 구문작성객체
		ResultSet rs = null; //table 내용을 담는 객체
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			pstmt = conn.prepareStatement("select * from atable");
			// insert update delete -> pstmt.executeUpdate()
			// select -> pstmt.executeQuery()
			rs = pstmt.executeQuery();
			while(rs.next()){//rs.next는 그다음 행이 있으면 true, 없으면 false
				System.out.print(rs.getString(1)+" ");
				System.out.print(rs.getString(2)+" ");
				System.out.print(rs.getString(3)+" ");
				System.out.println(rs.getString(4));
}
		}catch(Exception e){
				e.printStackTrace();
			}
		finally{
			try{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e){}
		}
		}
	}

