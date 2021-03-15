
public class Ex05 {
	
	private int sum = 0;
	
	Ex05(){
		int ar[] = {5,4,2,1,3};
		doPrintArr(ar);
		System.out.println("ar[3] ="+ar[3]);
		int br[] = ar;
		int cr[] = new int[ar.length];
		for(int i = 0; i<ar.length; i++){
			cr[i] = ar[i];
		}
	}
	
	public void doPrintArr(int [] ar){
		for(int i=0; i<ar.length; i++){
			sum += ar[i];
			System.out.println("ar[i] ="+ar[i]);
		}
		System.out.println("sum ="+sum);
		ar[3] = 20;
	}
	
	public static void main(String[] args) {
		new Ex05();
	}
}
