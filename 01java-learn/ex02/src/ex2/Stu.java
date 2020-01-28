package ex2;

public class Stu {

	int studentID;
	String studentName;
	int grade;
	String address;

	public void showStudentInfo() {
		System.out.println(studentName + "," + address);
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String name) {
		studentName = name;
	}

	public static void main(String[] args) {
		Stu studentAhn = new Stu();
		studentAhn.studentName = "황지민";
		studentAhn.address = "공릉";

		System.out.println(studentAhn.studentName);
		System.out.println(studentAhn.getStudentName());

		studentAhn.setStudentName("지밍");
		studentAhn.showStudentInfo();
	}
}