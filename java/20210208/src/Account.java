
public class Account {
	String name;
	int al; //java�� �� �ȳ����� 0���� �ν�
	
	public void setName(String a){
		name = a;
	}
	// al ����
	public void setAl(int value){
		al = value;
	}
	// al ���
	public void printAl(){
		System.out.println("name ="+name);
		System.out.println("al = "+al);
	}
}
