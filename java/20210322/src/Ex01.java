//�������̵�

class Car{
	protected String name;
	Car(String name){
		this.name = name;
	}
}

class KiaCar extends Car{ //kia�� car���� ��ӹ���
	private int price;
	KiaCar(String name){
		super(name); //this.name �� name ȣ�����
	}
	KiaCar(String name, int price){
		this(name);  //���� Ŭ������ �Ȱ��� �����ڸ� ã�Ե� 
		this.price = price;
	}
	public String toString(){
		return "name ="+name+"price ="+price;
	}
}
public class Ex01 {
	public static void main(String[] args) {
		KiaCar kia = new KiaCar("����Ƽ��",2000);
		System.out.println(kia);
	}
}