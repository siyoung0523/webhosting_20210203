interface A{
	public void doA(String a);
}

public class Ex01 implements A{ //class ����� extends������ interface ��ӱ� implements
	

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
	public void doA(String a) {  //doA ������ �������
		System.out.println("doA �Լ��Դϴ�.");
	}
}
