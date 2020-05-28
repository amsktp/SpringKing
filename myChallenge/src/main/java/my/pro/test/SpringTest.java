package my.pro.test;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		AbstractApplicationContext ctx = new ClassPathXmlApplicationContext("/spring-context.xml");
		
		MemberVo memberVo = ctx.getBean("memberVo", MemberVo.class);
		
		System.out.println(memberVo);
		
		
		
	}

}
