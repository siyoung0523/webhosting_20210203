interface Prin{
	void print();
}
class Sprin implements Printable{
	@Override
	public void print(String doc) {
		System.out.println("Sprin");
		System.out.println(doc);
	}
}
class Mprin extends Sprin{
	@Override
	public void print(String doc) {
		System.out.println("Mprin");
		System.out.println(doc);
	}
}
public class Ex04 {
	public static void main(String[] args) {
		Printable prin1 = new Sprin();
		Printable prin2 = new Mprin();
	
		if(prin1 instanceof Printable)
			prin1.print("�θ�ü�� ���� �� �ֵ�. �����ǵ� �Լ� printȣ��");
		if(prin2 instanceof Printable)
			prin2.print("�θ�ü�� ���� �� �ֵ�. �����ǵ� �Լ� printȣ��");

	}
}
