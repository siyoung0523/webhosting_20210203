class AA{
	public void doA(){
		System.out.println(11);
	}
}
public class Ex01 {

		Ex01(){
			int arr[]=new int[5]; //int 형 소문자 안에는 함수없음
			for(int i = 0; i<5;i++){
				System.out.println("arr["+i+"]="+arr[i]); // 기본형이라 객체가 아님
			}
			
			String string_arr[] = new String[5]; // 객체로 선언되어 있음
			for(int i = 0; i<5 ; i++){
				System.out.println("string_arr["+i+"]= "+string_arr[i]);
			}
		
			AA aa_arr[] = new AA[5]; // 객체로 선언되어 있음
			for(int i = 0; i<5 ; i++){
				System.out.println("aa_arr[i] ="+aa_arr[i]);
			}
			aa_arr[0] = new AA();
			aa_arr[0].doA(); //aa_arr[0] = new AA();이게 없으면 null.doA(); 이렇게 돼서 에러발생
			//프로세스는 여러개의 쓰레드로 이루어져있다
		}
		public static void main(String[] args){
			new Ex01();
		}
}
