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
		System.out.println("��ȣ�Է�");
		idx = AtableMain.scan.nextLine();
		System.out.println("�̸��Է�");
		name = AtableMain.scan.nextLine();
		System.out.println("�����Է�");
		gender = AtableMain.scan.nextLine();
		System.out.println("����Է�");
		remark = AtableMain.scan.nextLine();
		// try �����ȿ� �ִ� ������ ���� �ϴٰ� ������ �߻��ϸ� catch�� ������.
		/*
		 * 1. jar ���� �߰� Ȯ�� 2. DB���� 3. SQL �����ۼ�
		 */
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			System.out.println("DB���Ἲ��");
			pstmt = conn.prepareStatement(
					"INSERT INTO ATABLE " 
					+ "(IDX, NAME, GENDER, REMARK) " 
					+ "VALUES " 
					+ "(?,?,?,?)");
			pstmt.setString(1, idx);//����ǥ�� �� �ֱ�
			pstmt.setString(2, name);
			pstmt.setString(3, gender);
			pstmt.setString(4, remark);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("���� �� Ŭ���� ���� ����");
		} finally {
			try {
				conn.close(); // ������ �������� �ݾ������
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
		System.out.println("��ȣ�Է�");
		idx = AtableMain.scan.nextLine();
		System.out.println("�̸��Է�");
		name = AtableMain.scan.nextLine();
		System.out.println("�����Է�");
		gender = AtableMain.scan.nextLine();
		System.out.println("����Է�");
		remark = AtableMain.scan.nextLine();
		// try �����ȿ� �ִ� ������ ���� �ϴٰ� ������ �߻��ϸ� catch�� ������.
		/*
		 * 1. jar ���� �߰� Ȯ�� 2. DB���� 3. SQL �����ۼ�
		 */
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			System.out.println("DB���Ἲ��");
			pstmt = conn.prepareStatement(
					"UPDATE ATABLE "+
					"SET NAME=?, GENDER=?, REMARK=? "+
					"WHERE IDX= ? ");  // oracle ���� ������(����ϴ�) ������Ʈ ���� ���� ��
			pstmt.setString(1, name);//����ǥ�� �� �ֱ�
			pstmt.setString(2, gender);
			pstmt.setString(3, remark);
			pstmt.setString(4, idx);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("���� �� Ŭ���� ���� ����");
		} finally {
			try {
				conn.close(); // ������ �������� �ݾ������
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
		
		// try �����ȿ� �ִ� ������ ���� �ϴٰ� ������ �߻��ϸ� catch�� ������.
		/*
		 * 1. jar ���� �߰� Ȯ�� 2. DB���� 3. SQL �����ۼ�
		 */
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			System.out.println("DB���Ἲ��");
			pstmt = conn.prepareStatement("DELETE FROM ATABLE");
//			pstmt.setString(1, idx);//����ǥ�� �� �ֱ�
//			pstmt.setString(2, name);
//			pstmt.setString(3, gender);
//			pstmt.setString(4, remark);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("���� �� Ŭ���� ���� ����");
		} finally {
			try {
				conn.close(); // ������ �������� �ݾ������
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}
	
	
	public void selectAtable(){
		Connection conn=null; //DB ���ᰴü
		PreparedStatement pstmt=null;; //SQL �����ۼ���ü
		ResultSet rs = null; //table ������ ��� ��ü
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "AI", "1234");
			pstmt = conn.prepareStatement("select * from atable");
			// insert update delete -> pstmt.executeUpdate()
			// select -> pstmt.executeQuery()
			rs = pstmt.executeQuery();
			while(rs.next()){//rs.next�� �״��� ���� ������ true, ������ false
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
