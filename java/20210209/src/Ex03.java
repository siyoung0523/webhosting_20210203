class AA{
	// 1. �����ڴ� �޼���� ���������
	//    �����ڴ� ��ȯ�Ǵ� ���� ����...
	// 2. �����ڴ� Ŭ���� ���̶� �����ؾ��Ѵ�.
	// �޼��� �����ε��� �޼��� ���� ������ �Ű�����(�Ķ��Ÿ)�� �ٸ��� �ٸ� �޼���� ����.
	public AA(){
		System.out.println("AA ������");
	}
	// ������ �����ε�
	public AA(int a){
		System.out.println("a�Ķ��Ÿ �ִ� ������ a ="+a);
	}
}
class BB{
	public BB(){
		System.out.println("BB ������");
	}
}

public class Ex03 {
	
	public static void main(String[] args) {
		// �޸𸮿� �ø��� �����ڸ� ȣ���Ѵ�. 
		AA a1 = new AA(); 
		System.out.println(a1);
		AA a2 = new AA(10); 
		System.out.println(a2);
		new BB();
		
	}
}
