
public class Employee {
	private String name;
	private String jumin;
	private int sal;
	
	public void setName(String name){
		this.name = name; //this�� class�ȿ��� nameã�� ��.
	}
	//alt + shift + s -> r
	
	
	/*private �������������� ����
	 *  1.setName
	 *  2.�����ڷ�
	 */
	public void doPrint(){
		System.out.println("�̸�" + name);
		System.out.println("�ֹ�" + jumin);
		System.out.println("����" + sal);
	}


	public void setJumin(String jumin) {
		this.jumin = jumin;
	}


	public void setSal(int sal) {
		this.sal = sal;
	}
}
