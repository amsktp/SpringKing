package test;

public class StudentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//첫번째 학생
		
		Student firstStudent = new Student();
		firstStudent.name = "이찬양";
		firstStudent.showStudent();

		System.out.println();
		//첫번째 학생
		
		Student secondStudent = new Student();
		secondStudent.name = "고재민";
		secondStudent.showStudent();
		
		System.out.println();
		//첫번째 학생
		
		Student thirdStudent = new Student();
		thirdStudent.name = "차정경";
		thirdStudent.score = new Score(300,20);
		thirdStudent.showStudent();
		
		
		
		
	}

}
