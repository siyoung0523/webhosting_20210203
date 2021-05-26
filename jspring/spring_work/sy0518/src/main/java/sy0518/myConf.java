package sy0518;

import java.io.IOException;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class myConf {

	
		@Bean
		public MemberDao memberDao() {
			MemberDao md = new MemberDao();
			return md;
		}
		
		@Bean
		public MemberService memberService() {
			return new MemberService(memberDao());
		}
		
//		@Bean
//		public MemberController memberController() throws IOException{
//			return new MemberController(memberService());
//		}
}
