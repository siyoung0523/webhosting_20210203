package HW;

import java.util.Scanner;

public class EMPMain {

	public EMPMain(){
		Scanner sc = new Scanner(System.in);
		CallProcedure_insert in = new CallProcedure_insert();
		CallProcedure_update up = new CallProcedure_update();
		CallProcedure_delete de = new CallProcedure_delete();
		CallProcedure_select se = new CallProcedure_select();
		while(true){
		System.out.println("1�� insert 2�� update 3�� delete 4�� select");
		int select = sc.nextInt();
		if(select ==1)
			in.insert();
		else if(select ==2)
			up.update();
		else if(select ==3)
			de.delete();
		else if(select ==4)
			se.select();
		else
			System.exit(1);
		}
	}

public static void main(String[] args) {
	new EMPMain();
	}
	
}
