package DB;

import java.util.Scanner;

public class Main {
	public Main(){
		Scanner sc = new Scanner(System.in);
		CallProcedure1 c1 = new CallProcedure1();
		CallProcedure2 c2 = new CallProcedure2();
		CallProcedure3 c3 = new CallProcedure3();
		CallProcedure4 c4 = new CallProcedure4();
		while(true){
		System.out.println("1번 insert 2번 update 3번 delete 4번 select");
		int select = sc.nextInt();
		if(select ==1)
			c1.callProcedure1();
		else if(select ==2)
			c2.CallProcedure2();
		else if(select ==3)
			c3.CallProcedure3();
		else if(select ==4)
			c4.CallProcedure4();
		else
			System.exit(1);;
		}
	}

public static void main(String[] args) {
	new Main();
	}
}
