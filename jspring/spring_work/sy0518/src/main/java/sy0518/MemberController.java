package sy0518;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.core.annotation.AnnotationConfigurationException;

public class MemberController {
	
	public static ApplicationContext acac = null;
	MemberService memberService;
	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	
	public MemberController(MemberService memberService) throws IOException {
		this.memberService = memberService;
		while(true) {
			System.out.println("¹¹ÇÒ·¡¿ä?");
			String cmd = br.readLine();
			if(cmd.equals("insert")) {
				memberService.insert();
			}
		}
	}

	public static void main(String[] args) throws IOException {
		acac = 	new AnnotationConfigApplicationContext(myConf.class);
	
		MemberService ms = acac.getBean(MemberService.class);
		
		new MemberController(ms);
	}
}