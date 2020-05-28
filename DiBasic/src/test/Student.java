package test;

public class Student {

	String name;
	Score score;
	
	
	//Student 클래스는 Score 클래스에 의존한다.
	
	public Student() {
		score = new Score(100, 90);
		
	}
	
	public void showStudent() {
		System.out.println("B 버전");
		System.out.println("이름은 " + name);
		score.showScore();
	}
	
}
