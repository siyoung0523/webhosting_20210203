class StaticValues{
	static int A = 10; //������ ����, ������ ���� .. ǥ�� (static�� ������ �빮��)
	int b = 20;
}
class A{
	public void doPrintTraticA(){System.out.println("SV.A ="+StaticValues.A++);
	
	StaticValues sv = new StaticValues();
	System.out.println("SV.b ="+sv.b++);
	
}
class B{
	public void doPrintTraticA(){System.out.println("SV.A ="+StaticValues.A++);}
}

public class Ex01 {
	/*
	 * ������ ����, ���� ����, �� ����
	 * ������ ���� : ���� �����ϸ� ���α׷� ���ۿ��� ����ñ���  ex)��������
	 * ���� ���� : �Լ����� �⺻������ ����ÿ� ����ϰ� �Լ� ������ �� �޸𸮿��� ����  ex)
	 * �� ���� : molloc, calloc, realloc free �����ڰ� ����ؼ� ���� �޸� �Ҵ� �� ����
	 */
	public static void main(String[] args) {
		A a = new A(); //�� ����
		a.doPrintTraticA(); //���� ����
		B b = new B(); 
		b.doPrintTraticA();
		System.out.println("SV.A ="+StaticValues.A);
	}
}
