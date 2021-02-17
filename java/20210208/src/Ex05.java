
public class Ex05 {

		int a = 10;
		
		public void doA() {
			a++;
		}
		
		public void doB() {
			a=20;
		}
		
		public static void main(String[] args) {
			
			Ex05 e5 = new Ex05();
			//e5.main(null);
			System.out.println("e5.a="+e5.a);
			//ex05를 인스턴스화 함.
			e5.doA();
			System.out.println("e5.a="+e5.a);
			e5.doB();
			System.out.println("e5.a="+e5.a);
		}
}
