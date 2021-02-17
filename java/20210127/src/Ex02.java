
public class Ex02 {

	
	public static void main(String[] args) {
		boolean a = true;
		
		if(a){//true이면 실행
			System.out.println("a의 값dms 참입니다.");
		}
		a=false;
		if(a){//false이기에 여기서 안걸리고 else로 넘어감.
			
		}else{
			System.out.println("a의 값은 거짓입니다.");
		}
	}
}
