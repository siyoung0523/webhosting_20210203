
public class Ex01 {

	public static void main(String[] args) {
		// + - * / %
		
		int num1 = 10;
		int num2 = 20;
		
		System.out.println("num1 + num2 =" +num1+num2);
		System.out.println(num1+"+ num2 =" +num1+num2);
		System.out.println(num1 + " + " +num2 + " = " +num1+num2); // 이렇게 하면 1020이 됨.
		System.out.println(num1 + " + " +num2 + " = " +(num1+num2));//이렇게 해야 10+20 이 30으로 인식됨.
		
		
		System.out.println(num1 + " + " +num2 + " = " +(num1+num2));
		System.out.println(num1 + " - " +num2 + " = " +(num1-num2));
		System.out.println(num1 + " * " +num2 + " = " +(num1*num2));
		System.out.println(num1 + " / " +num2 + " = " +(num1/num2));
		System.out.println(num1 + " / " +num2 + " = " +((double)num1/(double)num2));
		System.out.println(num1 + " % " +num2 + " = " +(num1%num2));
	}
}
