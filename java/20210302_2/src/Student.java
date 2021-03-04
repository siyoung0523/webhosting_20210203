
public class Student {
	private String name;
	private String gender;
	private int age;
	
	// 방법1. setter 설정
	// 방법2. 생성자로 설정 (이걸로 했음)
	
	public Student(String n, String g, int a){
		name = n;
		gender = g;
		age = a;
	}
	
	public void print(){
		System.out.println("이름은?"+name+"입니다");
		System.out.println("성별은?"+gender+"입니다");
		System.out.println("나이는?"+age+"입니다");
	}

}
