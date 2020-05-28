package kr.tg.bna;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class StudentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//첫번째 학생
		
		AbstractApplicationContext ctx = new ClassPathXmlApplicationContext("/spring-context.xml");
		
		Student student = ctx.getBean("student", Student.class);
		
//		student.name = "이찬양";
		
		
		
		student.showStudent();

		
	}
}
