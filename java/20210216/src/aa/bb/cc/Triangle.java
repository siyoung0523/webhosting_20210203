package aa.bb.cc;


// 선언 부분으로 이동
// ctrl + 마우스왼쪽클릭 or F3

// 소스 뒤로 이동
// ALT + <- (방향키)
// 소스 앞으로 이동
// ALT + -> (방향키)
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
