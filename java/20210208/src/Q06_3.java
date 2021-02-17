
public class Q06_3 {
	
	public static int doA(int a){
		
		if(a>0){
			return doA(a-1)*2;
		}
		else{
			return 1;

		}
	}
	
	public static void main(String[] args) {
		
		int n = 10;
		int returnValue = doA(n);
		System.out.println("2ÀÇ "+n+"½Â");
		System.out.println("returnValue ="+returnValue);
	}
}
