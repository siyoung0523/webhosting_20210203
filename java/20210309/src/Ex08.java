class Box{
	private String content;
	Box(){}
	Box(String content){
		this.content = content;
	}

/*
 * alt + shift + s -> s toString �����
 * alt + shift + s -> r get setter �����
 * alt + shift + s -> o ������ �����
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
		System.out.println(stb); //toString�� ������ ��.
		
		Box box = new Box(); //�⺻�����ڵ� �����Ǿ��� ǥ��
		System.out.println(box);
		System.out.println(box.toString());
	}
}
