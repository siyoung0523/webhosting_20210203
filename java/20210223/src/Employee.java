
public class Employee {
	private String name;
	private String jumin;
	private int sal;
	
	public void setName(String name){
		this.name = name; //this는 class안에서 name찾는 것.
	}
	//alt + shift + s -> r
	
	
	/*private 접근제어지시자 설정
	 *  1.setName
	 *  2.생성자로
	 */
	public void doPrint(){
		System.out.println("이름" + name);
		System.out.println("주민" + jumin);
		System.out.println("연봉" + sal);
	}


	public void setJumin(String jumin) {
		this.jumin = jumin;
	}


	public void setSal(int sal) {
		this.sal = sal;
	}
}
