
public class CheeseCake extends Cake{
	@Override //�θ� Ŭ��������, �ڽ� Ŭ�������� �ִٴ°� �ǹ� (yummy)
	public void yummy(){
		super.yummy(); // �θ��� �͵� ȣ���ϰ�,�ڱ� �ڽ��� �͵� ȣ����.�̰��� ȣ���ϸ� cake�� ����.
		System.out.println("CheeseCake");
	}
	
	public void doA(){
		super.yummy();
		System.out.println("doA�Լ�");
		yummy();
	}
	
}