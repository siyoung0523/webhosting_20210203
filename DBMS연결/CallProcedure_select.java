package HW;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CallProcedure_select {

	public void select() {
		Connection conn = null; // DB연결된 상태(세션)을 담은 객체
		PreparedStatement pstm = null; // SQL 문을 나타내는 객체
		ResultSet rs = null; // 쿼리문을 날린것에 대한 반환값을 담을 객체
		try {
			int count = 0;
			EMP_1[] emp = new EMP_1[50];
			// Class.forName("oracle.jdbc.driver.OracleDriver");
			// Connection con =
			// DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","123456");
			conn = DBConnection.getConnection();
			// // 프로시저 호출
			CallableStatement cs = conn.prepareCall("begin select_emp_1(?); end;");
			// CallableStatement cs = conn.prepareCall("begin
			// singlerow_BUYTBL(?,>); end;");
			// 입력 파라메터
			// cs.setInt(1, 30);
			// 출력 파라메터
			cs.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			// 실행
			cs.execute();
			// ResultSet rs = (ResultSet)cs.getObject(1);
			rs = (ResultSet) cs.getObject(1);

			while (rs.next()) {

				/*
				 * System.out.println(rs.getInt("empno")+":"+
				 * rs.getString("ename")+":"+ rs.getString("job")+":"+
				 * rs.getString("mgr")+":"+ rs.getString("hiredate")+":"+
				 * rs.getString("comm")+":"+ rs.getString("deptno")+":"+
				 * rs.getInt("sal"));
				 */
				emp[count] = new EMP_1(rs.getInt("empno"), rs.getString("ename"), rs.getInt("sal"), rs.getString("job"),
						rs.getInt("mgr"), rs.getString("hiredate"), rs.getInt("comm"), rs.getInt("deptno"));
				count++;
			}

			for (int i = 0; emp.length > i; i++) {
				if (emp[i] != null) {
					emp[i].print();
				}
			}

			rs.close();
			cs.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
