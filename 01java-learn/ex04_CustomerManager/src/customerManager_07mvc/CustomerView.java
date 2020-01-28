package customerManager_07mvc;

public class CustomerView {
	
	public void menuPrompt(CustomerController controller) {
		System.out.printf("\n[INFO] 고객 수 : %d, 인덱스 : %d\n", controller.count, controller.index);
		System.out.println("메뉴를 입력하세요.");
		System.out.println("(I)nsert, (P)revious, (N)ext, (S)pecific, " + "(C)urrent, (U)pdate, (D)elete, (Q)uit");
		System.out.print("메뉴 입력: ");
	}
	public void namePrompt() {
		System.out.print("이름을 입력하세요. : ");
	}
	public void nameCheckPrompt(String name) {
		System.out.print("이름이 < " + name + " > 맞습니까? ");
	}	
	public void genderPrompt() {
		System.out.print("성별을 입력하세요.(M/F) : ");
	}	
	public void emailPrompt() {
		System.out.print("이메일을 입력하세요. : ");
	}	
	public void birthYearPrompt() {
		System.out.print("출생년도를 입력하세요. : ");
	}
	
	public void indexPrompt() {
		System.out.println("인덱스 번호를 입력하세요. : ");
	}
	
	
	public void updateIntro() {
	System.out.println("---------UPDATE CUSTOMER INFO----------");
	}
	
	public void updateNamePrompt(CustomerModel model, int index) {
		System.out.print("이름(" + model.get(index).name + ") :");
	}
	public void updategenderPrompt(CustomerModel model, int index) {
		System.out.print("성별(" + model.get(index).gender + ") :");
	}
	public void updateemailPrompt(CustomerModel model, int index) {
		System.out.print("이메일(" + model.get(index).email + ") :");
	}
	public void updateBirthYearPrompt(CustomerModel model, int index) {
		System.out.print("출생년도(" + model.get(index).birthYear + ") :");
	}
	
	
	
	public void errForm() {
		System.out.println("양식에 맞게 입력하세요.");
	}
	
	
	// 고객데이터 출력
	public void printCustomerData(CustomerModel model, int index) {
		System.out.println("==========CUSTOMER INFO================");
		System.out.println("이름 : " + model.get(index).name);
		System.out.println("성별 : " + model.get(index).gender);
		System.out.println("이메일 : " + model.get(index).email);
		System.out.println("출생년도 : " + model.get(index).birthYear);
		System.out.println("=======================================");
	}
	
	public void savePrompt() {
		System.out.println("저장되었습니다.");
	}

	
	
	
}
