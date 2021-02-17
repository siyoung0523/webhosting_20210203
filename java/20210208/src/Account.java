
public class Account {
	String name;
	int al; //java는 값 안넣으면 0으로 인식
	
	public void setName(String a){
		name = a;
	}
	// al 설정
	public void setAl(int value){
		al = value;
	}
	// al 출력
	public void printAl(){
		System.out.println("name ="+name);
		System.out.println("al = "+al);
	}
}
