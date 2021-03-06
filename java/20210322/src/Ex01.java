//오버라이딩

class Car{
	protected String name;
	Car(String name){
		this.name = name;
	}
}

class KiaCar extends Car{ //kia가 car에게 상속받음
	private int price;
	KiaCar(String name){
		super(name); //this.name 의 name 호출받음
	}
	KiaCar(String name, int price){
		this(name);  //같은 클래스내 똑같은 생성자를 찾게됨 
		this.price = price;
	}
	public String toString(){
		return "name ="+name+"price ="+price;
	}
}
public class Ex01 {
	public static void main(String[] args) {
		KiaCar kia = new KiaCar("스포티지",2000);
		System.out.println(kia);
	}
}
