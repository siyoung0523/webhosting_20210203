class Person{
	String name = "�̸�";
	int age = 20;
}

public class Ex02 {
	public static void main(String[] args) {
		String a = "String";
		String b = new String("String b");
		
		Person c = new Person();
//		Person d = Person(name="aa", age=20);
		
		int[] aa = {1,2,3,4,5,6,7,8,9,10};
		
		System.out.println("a�� ���� = "+a.length()); //a �� �Լ�, 
		System.out.println("aa�� ���� = "+aa.length); //aa �� �迭,�迭 ���̶��� ��ȣ�� �Ⱥ���
		
		System.out.println("a[0] = "+a.charAt(0));
//		System.out.println("a[0]" +a[0]); �̷��� �߷� ����
//		System.out.println("a[1]" +a[1]);
		
	}
}