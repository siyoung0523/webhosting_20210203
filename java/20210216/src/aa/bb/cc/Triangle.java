package aa.bb.cc;


// ���� �κ����� �̵�
// ctrl + ���콺����Ŭ�� or F3

// �ҽ� �ڷ� �̵�
// ALT + <- (����Ű)
// �ҽ� ������ �̵�
// ALT + -> (����Ű)
public class Triangle {
	int x;
	int y;
	public void setXY(int a, int b) {
		x = a;
		y = b;
	}
	public double getArea() {
		return x*y*0.5;
	}
}