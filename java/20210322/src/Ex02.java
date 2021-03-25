/*
 * �������� extends Object �ֻ��� Ŭ����
 * toString ����
 * �ڽ�Ŭ���� ������ �θ�Ŭ���� �������� ���� -> ������
 * super() <- ����Ŭ���� ������ ȣ��
 * 		super(parameter) parameter ������ ���� �ٸ��� �θ� :�̰��� �����ε� ����̶���
 * this() <- ����Ŭ���� ������ ȣ��
 * 		this(parameter) parameter ������ ���� �ٸ��� �θ� :�̰��� �����ε� ����̶���
 */
class A extends Object{ //Object class�� �����Ǿ�����. Object�� �ֻ��� Ŭ������.
	public void doA(){
		System.out.println("A");
	}
}
class B{
	public void doB(){
		System.out.println("B");
	}
}
class C extends B{
}
public class Ex02 {
	public static void main(String[] args) {
		B bb = new C();
		A a = new A();
		System.out.println(a);
		
		B b = new B();
		System.out.println(b);
		
		Object obj1 = new A();
		Object obj2 = new B();
		Object c[] = {new A(), new A(), new B()};
		
		for (int i = 0; i < c.length; i++) {
			System.out.println(c[i]);
//			c[i].doA(); �̷��Դ� �ȵ� ����ȯ �������
			if(c[i] instanceof A){
				A ina = (A) c[i];
				ina.doA();	
			}
			if(c[i] instanceof B){
				B ina = (B) c[i];
				ina.doB();	
			}
		}
	}
}