package chap02;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// 싱글톤 담는 통 객체
@Configuration
public class MhContext {
	
	//AA와 BB를 넣음.
	//싱글톤 객체 가장 중요한 것은. 메모리 상에 하나만 들어간다는 것.
	@Bean
	public AA aa() {
		AA aa = new AA();
		return aa;
	}
	
	@Bean
	public BB bb() {
		BB bb = new BB();
		return bb;
	}
}
