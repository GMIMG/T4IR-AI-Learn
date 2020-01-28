package customerManager_07mvc;

public class Customer {

	public String name; // 이름 저장
	public char gender; // 성별 저장
	public String email; // 이메일 저장s
	public int birthYear; // 출생년도 저장

	// 생성자 만듦
	public Customer(String name, char gender, String email, int birthYear) {
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.birthYear = birthYear;
	}
	
	public String toCSV(){
		return name+","+gender+","+email+","+ birthYear;
	}

}
