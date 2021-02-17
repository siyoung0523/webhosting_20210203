class AA{
	// 1. 생성자는 메서드와 비슷하지만
	//    생성자는 반환되는 값이 없다...
	// 2. 생성자는 클래스 명이랑 동일해야한다.
	// 메서드 오버로딩은 메서드 명이 같더라도 매개변수(파라메타)가 다르면 다른 메서드로 본다.
	public AA(){
		System.out.println("AA 생성자");
	}
	// 생성자 오버로딩
	public AA(int a){
		System.out.println("a파라메타 있는 생성자 a ="+a);
	}
}
class BB{
	public BB(){
		System.out.println("BB 생성자");
	}
}

public class Ex03 {
	
	public static void main(String[] args) {
		// 메모리에 올릴때 생성자를 호출한다. 
		AA a1 = new AA(); 
		System.out.println(a1);
		AA a2 = new AA(10); 
		System.out.println(a2);
		new BB();
		
	}
}
