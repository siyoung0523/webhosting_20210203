class Account{
	String accNumber;   // 12 - 34 - 89
	String ssNumber;	// 950523-1111111
	int balance;			// 0
	
	//다른 생성자를 선언하게 되면 기본생성자가 없어지는 현상이 있다.
	public Account(String acc, String ss, int bal){
		accNumber = acc;
		ssNumber = ss;
		balance = bal;
	}//기본 생성자가 아닌 매개변수가 있는 다른 생성자
	
//	public void initAccount(String acc, String ss, int bal){
//		accNumber = acc;
//		ssNumber = ss;
//		balance = bal;
//	}
	
	public void checkAccount(){ //안에 내용 확인
		System.out.println("계좌번호 ="+accNumber);
		System.out.println("주민등록 ="+ssNumber);
		System.out.println("금액= "+balance);
	}
}

// f2 클래스 이름 바꾸는 단축기
public class AccountMana {
	public static void main(String[] args) {
		Account acc1 = new Account("12-34-89", "950523-1111111", 10000);
		Account acc2 = new Account("34-89-12", "000523-3111111", 10000);

//		acc1.initAccount("12-34-89", "950523-1111111", 10000);
//		acc2.initAccount("34-89-12", "000523-3111111", 10000);
		
		acc1.checkAccount();
		acc2.checkAccount();
	}
}
