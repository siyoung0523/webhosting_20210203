class AAA{
	AAA(){ super(); System.out.println("AAA 持失切");}
}
class BBB extends AAA{
	BBB() { super(); System.out.println("BBB 持失切");}
}
class CCC extends BBB{
	CCC(){ super(); System.out.println("CCC 持失切");}
}
	
public class Ex02_2 {
	Ex02_2(){
		CCC ccc = new CCC();
	}
	public static void main(String[] args) {
		new Ex02_2();
	}
}
