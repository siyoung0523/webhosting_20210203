interface A{
	public void doA(String a);
}

public class Ex01 implements A{ //class 상속은 extends였지만 interface 상속기 implements
	

	public static void main(String[] arg){
		Ex01 ex01 = new Ex01();
		ex01.doA("test");
	
//		A a1 = new A();
		
		A a = new A(){
			public void doA(String s){
				
			}
		};
	}
	@Override
	public void doA(String a) {  //doA 재정의 해줘야함
		System.out.println("doA 함수입니다.");
	}
}
