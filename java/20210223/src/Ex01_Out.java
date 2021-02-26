
public class Ex01_Out {
	int a = 10;
	int b = 20;
	String name = "";
	public Ex01_Out(){}
	public Ex01_Out(String a){
		name = a;
	}
	public void doA(){
		System.out.println("a ="+a);
		System.out.println("b ="+b);
	}
	public void namePrint(){
		System.out.println("name ="+name);
	}
}
