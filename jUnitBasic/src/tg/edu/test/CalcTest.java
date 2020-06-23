package tg.edu.test;

import org.junit.Test;

import tg.edu.Calc;

public class CalcTest {

	@Test
	public void testAdd() {
		
		Calc calc = new Calc();
		
		calc.add(33, 44);
	}
	
}
