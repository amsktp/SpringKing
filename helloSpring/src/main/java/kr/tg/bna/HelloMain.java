package kr.tg.bna;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloMain {

	public static void main(String[] args) {
		
		HelloDao helloDao = new HelloDao();
		int result = helloDao.addTwoNumber(3, 5);
		System.out.println(result);

		// 이것이 스프링 방식
		
		AbstractApplicationContext ctx = 
				new ClassPathXmlApplicationContext("/spring-context.xml");
		
		HelloDao dao = ctx.getBean("helloDao", HelloDao.class);
		result = dao.addTwoNumber(5, 67);
		System.out.println(result);
		
		Calc calc = ctx.getBean("calc", Calc.class);
		result = calc.minusTwoNumber(10, 3);
		System.out.println(result);
		
	}
}
