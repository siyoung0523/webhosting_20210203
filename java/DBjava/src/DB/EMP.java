package DB;

public class EMP {
	private String empno;
	private String ename;
	private int sal;
	private String job;
	private String mgr;
	private String hiredate;
	private String comm;
	private String deptno;
	// 1 setter...
	// 2 �����ڷ�...
	public EMP(String empno,String ename,int sal, String job,String mgr,String hiredate,String comm,String deptno){
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.job = job;
		this.mgr = mgr;
		this.hiredate = hiredate;
		this.comm = comm;
		this.deptno = deptno;
	}
	public void print(){
		System.out.println("�����ȣ "+empno+"�Դϴ�");
		System.out.println("�̸��� "+ename+"�Դϴ�");
		System.out.println("�޿��� "+sal+"�Դϴ�");
		System.out.println("������"+job+"�Դϴ�");
		System.out.println("�Ŵ����� "+mgr+"�Դϴ�");
		System.out.println("�������"+hiredate+"�Դϴ�");
		System.out.println("����������"+comm+"�Դϴ�");
		System.out.println("�μ���ȣ��"+deptno+"�Դϴ�");
		System.out.println();
		System.out.println();
	}
}
