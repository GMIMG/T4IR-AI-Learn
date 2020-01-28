package customerManager_06save;

public class Customer {

	public String name; // 이름 저장
	public char gender; // 성별 저장
	public String email; // 이메일 저장s
	public int birthYear; // 출생년도 저장

	// 생성자 만듦
	public Customer(String pname, char pgender, String pemail, int pbirthYear) {
		this.name = pname;
		this.gender = pgender;
		this.email = pemail;
		this.birthYear = pbirthYear;
	}
	
	public String toCSV(){
		return name+","+gender+","+email+","+birthYear;
	}

}
