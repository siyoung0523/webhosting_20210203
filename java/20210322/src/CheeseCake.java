
public class CheeseCake extends Cake{
	@Override //부모 클래스에도, 자식 클래스에도 있다는걸 의미 (yummy)
	public void yummy(){
		super.yummy(); // 부모의 것도 호출하고,자기 자신의 것도 호출함.이것을 호출하면 cake가 나옴.
		System.out.println("CheeseCake");
	}
	
	public void doA(){
		super.yummy();
		System.out.println("doA함수");
		yummy();
	}
	
}
