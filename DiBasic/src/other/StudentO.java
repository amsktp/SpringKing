package other;

public class StudentO {

	String name;
	ScoreO scoreO;
	
	
	//Student 클래스는 Score 클래스에 의존한다.
	//의존성을 주입한 형태
	//주입은 자기가 만드는게 아니라 외부에서 만들어서  넣어주는 형태
	
	public StudentO(ScoreO scoreO) {
		this.scoreO = scoreO;
	}

	public void setScoreO(ScoreO scoreO) {
		this.scoreO = scoreO;
	}

	public void showStudent() {
		System.out.println("DI 버전");
		System.out.println("이름은 " + name);
		scoreO.showScore();
	}
	
}
