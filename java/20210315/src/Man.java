/*
 * import java.lang.*
 * this ��������
 * �⺻������ ���� �����ѵ�.. �ٸ� ������ ����� �����Ұ�
 * �⺻�����ڿ��� super(); ��� ������ ��ӹ��� Ŭ���� �⺻������ ȣ�� ���� �Ǿ��� �ִ�
 */


public class Man extends BusinessMan{
	private String company;
	private String position;
	Man(){
		super();
		System.out.println("MAN ������");
	} //���������ϴ�
	
	Man(String company, String position, String name){
		super(name);
		this.company = company;
		this.position = position;
	}
	
	public void tellYourInfo(){
		System.out.println("company =" +company);
		System.out.println("position =" +position);
		tellName();
	
	}
	
	public static void main(String[] args) {
	Man man =	new Man("������","������","ȫ�浿");
	man.tellYourInfo();
	}
}