
public class Ex06_2 {
	int arr[][] = {
			{1,2,3}, //0 ��° ��
			{4,5,6}, //1 ��° ��
			{7,8,9}  //2 ��° ��
	};
	Ex06_2(){
		int temp[] = arr[0];
		//temp �� 1,2,3
		
		arr[0] = arr[2];
		arr[2] = arr[1];
		arr[1] = temp;
		
		for (int i = 0; i < temp.length; i++) {
			for (int j = 0; j < temp.length; j++) {
			
			System.out.println("arr["+i+"]["+j+"]=" +arr[i][j]);
			}
		}
	}

	public static void main(String[] args) {
		new Ex06_2();
	}
}
