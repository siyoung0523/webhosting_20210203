/*
 * �غ��� ���� ������ ������ �� �ִ� Triangle Ŭ������ ��������
 * 
 * �׸��� �غ��� ���� ������ ������ �� �ִ� �޼ҵ�� �ﰢ���� ���̸� ����ؼ�
 * ��ȯ�ϴ� �޼ҵ嵵 �Բ� ��������
 * 
 * ���� �� Ŭ������ Ȱ���� ���� ���̴� main �޼��带 ��������.
 */
import aa.bb.cc.Triangle;

public class Ex03 {
	public static void main(String[] args) {
		Triangle tri = new Triangle();
		System.out.println("area =" + area);
		double area = tri.getArea();
		
		tri.setXY(3, 2);
		area = tri.getArea();
		System.out.println("area =" + area);
	}
}
