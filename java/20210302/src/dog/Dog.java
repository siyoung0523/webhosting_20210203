package dog;
import cat.Cat;


public class Dog {
	
	
	//1. import 적어서 해결
	//2. 풀패키지
	public void welcome(Cat cat){
		cat.makeSound(); // 접근제어 지시자 public이라 호출가능
//		cat.makeHappy(); // 접근제어 지시자 default라서 호출불가
	}
}
