package tg.edu.test;

import static org.junit.Assert.*;

import org.junit.Ignore;
import org.junit.Test;

import tg.edu.Calc;

public class CalcTest {
	
	@Ignore
	@Test
	public void test() {
		fail("Not yet implemented");
	}

	@Test
	public void testAdd() {
//		fail("일단 실패하고 보는게 목표다");
	
		Calc calc = new Calc();
		
		int resultNum = calc.add(33, 44);
		
		
//		왼족과 오른쪽을 비교한다 같으면 통과
		assertEquals(77, resultNum);
		
	}

	@Test
	public void testSub() {
//		fail("일단 실패하고 보는게 목표다");
		
		Calc calc = new Calc();
		
		int resultNum = calc.sub(10, 2);
		
		
//		왼족과 오른쪽을 비교한다 같으면 통과
		assertEquals(8, resultNum);
		
	}

	@Test
	public void testTimes() {
//		fail("일단 실패하고 보는게 목표다");
		
		Calc calc = new Calc();
		
		int resultNum = calc.times(10, 2);
		
		
//		왼족과 오른쪽을 비교한다 같으면 통과
		assertEquals(20, resultNum);
		
	}
}
