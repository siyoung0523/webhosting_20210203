class Person{
	String name = "이름";
	int age = 20;
}

public class Ex02 {
	public static void main(String[] args) {
		String a = "String";
		String b = new String("String b");
		
		Person c = new Person();
//		Person d = Person(name="aa", age=20);
		
		int[] aa = {1,2,3,4,5,6,7,8,9,10};
		
		System.out.println("a의 길이 = "+a.length()); //a 는 함수, 
		System.out.println("aa의 길이 = "+aa.length); //aa 는 배열,배열 길이때는 괄호를 안붙임
		
		System.out.println("a[0] = "+a.charAt(0));
//		System.out.println("a[0]" +a[0]); 이렇게 추력 못함
//		System.out.println("a[1]" +a[1]);
		
	}
}
