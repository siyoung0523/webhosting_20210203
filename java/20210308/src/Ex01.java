class StaticValues{
	static int A = 10; //데이터 영역, 도덕적 규율 .. 표준 (static의 변수는 대문자)
	int b = 20;
}
class A{
	public void doPrintTraticA(){System.out.println("SV.A ="+StaticValues.A++);
	
	StaticValues sv = new StaticValues();
	System.out.println("SV.b ="+sv.b++);
	
}
class B{
	public void doPrintTraticA(){System.out.println("SV.A ="+StaticValues.A++);}
}

public class Ex01 {
	/*
	 * 데이터 영역, 스텍 영역, 힘 영역
	 * 데이터 영역 : 값을 저장하면 프로그램 시작에서 종료시까지  ex)전역변수
	 * 스택 영영 : 함수에서 기본변수를 선언시에 사용하고 함수 종료할 때 메모리에서 삭제  ex)
	 * 힙 영역 : molloc, calloc, realloc free 개발자가 사용해서 직접 메모리 할당 및 삭제
	 */
	public static void main(String[] args) {
		A a = new A(); //힙 영역
		a.doPrintTraticA(); //스택 영역
		B b = new B(); 
		b.doPrintTraticA();
		System.out.println("SV.A ="+StaticValues.A);
	}
}
