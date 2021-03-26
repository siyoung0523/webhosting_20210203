package HW;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CallProcedure_select {

	public void select() {
		Connection conn = null; // DB����� ����(����)�� ���� ��ü
		PreparedStatement pstm = null; // SQL ���� ��Ÿ���� ��ü
		ResultSet rs = null; // �������� �����Ϳ� ���� ��ȯ���� ���� ��ü
		try {
			int count = 0;
			EMP_1[] emp = new EMP_1[50];
			// Class.forName("oracle.jdbc.driver.OracleDriver");
			// Connection con =
			// DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","123456");
			conn = DBConnection.getConnection();
			// // ���ν��� ȣ��
			CallableStatement cs = conn.prepareCall("begin select_emp_1(?); end;");
			// CallableStatement cs = conn.prepareCall("begin
			// singlerow_BUYTBL(?,>); end;");
			// �Է� �Ķ����
			// cs.setInt(1, 30);
			// ��� �Ķ����
			cs.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			// ����
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
