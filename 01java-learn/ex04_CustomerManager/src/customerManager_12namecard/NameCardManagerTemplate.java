package customerManager_12namecard;

import java.util.ArrayList;
import java.util.Scanner;

public class NameCardManagerTemplate {

	static ArrayList<NameCard> nameCardList = new ArrayList<>();
	
	static int index = -1;
	
	//스캐너
	static Scanner scan = new Scanner(System.in);
	public static void main(String[] args) {
		//메뉴 처리
		while(true) {
			System.out.println("메뉴를 입력하세요.");
			System.out.println("(I)nsert, (S)elect, (U)pdate, (D)elete, (Q)uit");
			String menu = scan.nextLine();
//			menu = menu.toLowerCase();
//			switch(menu.charAt(0)) {
			switch(menu.toLowerCase().charAt(0)) {
			case 'i' :
				System.out.println("명함 정보를 입력합니다.");
				insertNameCardInfo();
				break;
			case 's' :
				System.out.println("명함 정보를 조회합니다.");
				index = searchNameCardByName();
				if(index >= 0) {
					printNameCardInfo(index);
				}else {
					System.out.println("조회한 정보가 없습니다.");
				}
				break;
			case 'u' :
				System.out.println("명함 정보를 수정합니다.");
				index = searchNameCardByName();
				if(index >= 0) {
					updateNameCardInfo(index);
				}else {
					System.out.println("수정할 정보가 없습니다.");
				}
				break;
			case 'd' :
				System.out.println("명함 정보를 삭제합니다.");
				index = searchNameCardByName();
				if(index >= 0) {
					deleteNameCardInfo(index);
				}else {
					System.out.println("삭제할 정보가 없습니다.");
				}
				break;
			case 'q' :
				System.out.println("프로그램을 종료합니다.");
				System.exit(0);
			default : 
				System.out.println("없는 메뉴 입니다.");
				break;
			}
		}//end while
	}//end main
	
	private static void deleteNameCardInfo(int idx) {
	}

	private static void updateNameCardInfo(int idx) {
	}//end updateNameCardInfo()
	
	private static int searchNameCardByName() {
		return -1;
	}

	private static void insertNameCardInfo() {
	}
	private static void printNameCardInfo(int idx) {
	}
}//end class
