class MobilePhone{
	protected int number;
	MobilePhone(int  number){
		this.number = number;
	}
	public void answer(){
		System.out.println("��ȭ��ȣ"+number+"�� �����ϰ� �ֽ��ϴ�.");
	}
}

class APhone extends MobilePhone{
	APhone(int number){
		super(number);
	}
}

public class SmartPhone extends MobilePhone{
	private String ver;
	SmartPhone(String ver, int number){
		super(number);
		this.ver = ver;
	}
	public void version(){
		System.out.println("version = "+ver);
	}
	public static void main(String[] args) {
		SmartPhone sp = new SmartPhone("���� 8.0",1099462662);
		sp.answer();
		sp.version();
		
		MobilePhone mp = new SmartPhone("���� 7.0",131323);
//		mp.version(); mp�ȿ� version�� ����
		SmartPhone sp1 = (SmartPhone)mp;
		sp.version(); //�̷��� ����� ��
		//�θ�Ŭ�������� �ڽ�Ŭ���ø� ���� �� �ִ�.
	}
}