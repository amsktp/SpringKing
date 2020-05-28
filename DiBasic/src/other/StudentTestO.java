package other;

public class StudentTestO {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//첫번째 학생
		
		ScoreO firstScoreO = new ScoreO(100, 90);
		StudentO firstStudentO = new StudentO(firstScoreO);
		firstStudentO.name = "이찬양";
		firstStudentO.showStudent();

		System.out.println();
		//두번째 학생
		
		ScoreO secondScoreO = new ScoreO(70,80);
		StudentO secondStudentO = new StudentO(secondScoreO);
		secondStudentO.name = "고재민";
		secondStudentO.showStudent();
	
		System.out.println();
		//세번째 학생
		
		ScoreO thirdScoreO = new ScoreO(50, 50);
		StudentO thirdStudentO = new StudentO(thirdScoreO);
		thirdStudentO.name = "차정경";
		thirdStudentO.showStudent();
		
		
		
		
		
		
	}
}
