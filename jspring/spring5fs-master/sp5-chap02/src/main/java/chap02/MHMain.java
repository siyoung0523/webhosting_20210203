package chap02;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class MHMain {

		public static void main(String[] args) {
			// Spring.. framework
			// jsp + 스프링객체 컨테이너를 활용해서 객체생성해서ㅏ
			// 웹 프로그래밍 하는것...
			
			// MhContext안에 있는 AA BB 객체 조립하게 하는 것. -> 사용가능하게 함.
			AnnotationConfigApplicationContext acac =
					new AnnotationConfigApplicationContext(MhContext.class);
			
			//주소값 출력 -> 주소값 동일하게 나오는데 이건, 하나의 객체를 상주하고 있다는 것을 의미
			AA aa1 = acac.getBean("aa",AA.class);
			System.out.println(aa1);
			
			AA aa2 = acac.getBean("aa",AA.class);
			System.out.println(aa2);
			
			//이렇게 하면 주소값이 다름. why? new 로 새롭게 만든 것이기 때문.
			AA aa3 = new AA();
			System.out.println(aa3);
			
			BB bb1 = acac.getBean("bb", BB.class);
			System.out.println(bb1);
			
			BB bb2 = acac.getBean("bb", BB.class);
			System.out.println(bb2);
			
			BB bb3 = new BB();
			System.out.println(bb3);
			
			CC cc1 = CC.getInstance();
			System.out.println(cc1);
			
			CC cc2 = CC.getInstance();
			System.out.println(cc2);

			CC cc3 = new CC();
			System.out.println(cc3);
			
		}
}
