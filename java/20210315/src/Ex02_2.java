class AAA{
	AAA(){ super(); System.out.println("AAA ������");}
}
class BBB extends AAA{
	BBB() { super(); System.out.println("BBB ������");}
}
class CCC extends BBB{
	CCC(){ super(); System.out.println("CCC ������");}
}
	
public class Ex02_2 {
	Ex02_2(){
		CCC ccc = new CCC();
	}
	public static void main(String[] args) {
		new Ex02_2();
	}
}
