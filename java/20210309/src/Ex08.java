class Box{
	private String content;
	Box(){}
	Box(String content){
		this.content = content;
	}

/*
 * alt + shift + s -> s toString 만들기
 * alt + shift + s -> r get setter 만들기
 * alt + shift + s -> o 생성자 만들기
 */

	public String toString(){
		return"Box [content ="+content];
	}
public class Ex08 {
	//0xf3 -> 0xffff3333
	public static void main(String[] args) {
		StringBuilderd stb = new StringBuilder("12");
		stb.append("34");
		System.out.println(stb.toString());
		System.out.println(stb); //toString이 생략된 것.
		
		Box box = new Box(); //기본생성자도 생략되어진 표현
		System.out.println(box);
		System.out.println(box.toString());
	}
}

