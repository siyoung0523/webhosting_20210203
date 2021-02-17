/*
 * 밑변과 높이 정보를 저장할 수 있는 Triangle 클래스를 정의하자
 * 
 * 그리고 밑변과 높이 정보를 변경할 수 있는 메소드와 삼각형의 넓이를 계산해서
 * 반환하는 메소드도 함께 정의하자
 * 
 * 물론 이 클래스의 활용의 예를 보이는 main 메서드를 정의하자.
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
