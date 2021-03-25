/*
 * 생량가능 extends Object 최상위 클래스
 * toString 생량
 * 자식클래스 생성시 부모클래스 참조변수 가능 -> 다형성
 * super() <- 상위클래스 생성자 호출
 * 		super(parameter) parameter 갯수에 따라 다른것 부름 :이것을 오버로딩 기법이라함
 * this() <- 현재클래스 생성자 호출
 * 		this(parameter) parameter 갯수에 따라 다른것 부름 :이것을 오버로딩 기법이라함
 */
class A extends Object{ //Object class는 생략되어있음. Object는 최상위 클래스임.
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
//			c[i].doA(); 이렇게는 안됨 형변환 해줘야함
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
