
public class Ex04_2 {

	static int arr[] = {1,2,3};
	
	public static void doPrintArr(int[] arr){
		for(int i = 0; i< arr.length; i++){
			System.out.println("arr["+i+"]="+arr[i]);
		}
	}
	
	public static void addOneDArr(int[] arr, int add){
		for(int i = 0; i< arr.length; i++)
			arr[i] = arr[i] + add;
		
		doPrintArr(arr);
	}
	
	public static void addTwoDArr(int[][] arr, int add){
		for( int i =0; i<arr.length ; i++)
			addOneDArr(arr[i],add);
	}
	
	
	public static void main(String[] args) {
//		addOneDArr( new int[]{4,5,6},10);
		addTwoDArr( new int[][]{{4,5,6},{7,8,9}},10);
	}
	
}
