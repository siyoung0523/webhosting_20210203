class Box{
	String cont;
	Box(String cont){
		this.cont = cont;
	}
	public String toString(){
		return this.cont;
	}
}
public class Ex03 {
	Ex03(){
		Box a = new Box("���");
		System.out.println(a);
	
		Box bana = new Box("�ٳ���");
		System.out.println(bana);
		
		Box box[] = new Box[5];
		System.out.println("�ڽ��?"+box.length);
		System.out.println("box[0]="+box[0]);
		System.out.println("box[1]="+box[1]);		
		box[0] =a;
		box[1] = bana;
		System.out.println("box[0]="+box[0]);
		System.out.println("box[1]="+box[1]);
	}
	public static void main(String[] args) {
		new Ex03();
	}
}