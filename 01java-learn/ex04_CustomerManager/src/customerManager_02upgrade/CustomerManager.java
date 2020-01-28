package customerManager_02upgrade;

import java.util.Scanner;

public class CustomerManager {

	// 배열에 저장할 수 있는 최대 고객의 수

	static final int MAX = 100;

	// 고객정보를 저장할 변수를 배열로 선언

	static String[] nameList = new String[MAX]; // 이름 저장

	static char[] genderList = new char[MAX]; // 성별 저장

	static String[] emailList = new String[MAX]; // 이메일 저장

	static int[] birthYearList = new int[MAX]; // 출생년도 저장

	// 배열은 인덱스를 필요로 함

	static int index = -1;// 배열은 0부터 시작하므로 최초 인덱스는 -1이어야 함

	// 배열은 처음 선언한 크기보다 같거나 적은 개수의 자료를 저장

	// 그래서 현재 데이터가 몇 개 저장되어있는 지 알 수 있는 변수 선언

	static int count = 0;// 개수

	// 기본 입력장치로부터 데이터를 입력받기 위해 Scanner객체 생성

	static Scanner scan = new Scanner(System.in);

	public static void main(String[] args) {

		while (true) {
			System.out.printf("\n[INFO] 고객 수 : %d, 인덱스 : %d\n", count, index);
			System.out.println("메뉴를 입력하세요.");
			System.out.println("(I)nsert, (P)revious, (N)ext, (S)pecific, " + "(C)urrent, (U)pdate, (D)elete, (Q)uit");
			System.out.print("메뉴 입력: ");

			String menu = scan.next();
			menu = menu.toLowerCase(); // 입력한 문자열을 모두소문자로 변환
			switch (menu.charAt(0)) {
			case 'i':
				System.out.println("고객정보 입력을 시작합니다.");
				if (count >= MAX) {
					System.out.println("더 이상 저장할 수 없습니다.");
				} else {
					insertCustomerData();
					System.out.println("고객정보를 저장했습니다.");
				}

				break;

			case 'p':

				System.out.println("이전 데이터를 출력합니다.");

				if (index <= 0) {

					System.out.println("이전 데이터가 존재하지 않습니다.");

				} else {

					index--;

					printCustomerData();

				}

			case 'n':

				System.out.println("다음 데이터를 출력합니다.");

				if (index >= count - 1) {

					System.out.println("다음 데이터가 존재하지 않습니다.");

				} else {

					index++;

					printCustomerData();

				}

				break;

			case 'c':

				System.out.println("현재 데이터를 출력합니다.");

				if ((index >= 0) && (index < count)) {

					printCustomerData();

				} else {

					System.out.println("출력할 데이터가 선택되지 않았습니다.");

				}

				break;

			case 'u':

				System.out.println("데이터를 수정합니다.");

				if ((index >= 0) && (index < count)) {

					System.out.println(index + "번째 데이터를 수정합니다.");

					updateCustomerData();

				} else {

					System.out.println("수정할 데이터가 선택되지 않았습니다.");

				}

				break;

			case 'd':

				System.out.println("데이터를 삭제합니다.");

				if ((index >= 0) && (index < count)) {

					System.out.println(index + "번째 데이터를 삭제합니다.");

					deleteCustomerData();

				} else {

					System.out.println("삭제할 데이터가 선택되지 않았습니다.");

				}

				break;

			case 's':

				if (count <= 0) {

					System.out.println("데이터가 없습니다.");

				} else {

					printIdx();

				}

				break;

			case 'q':

				System.out.println("프로그램을 종료합니다.");

				scan.close(); // Scanner 객체를 닫아준다.

				System.exit(0); // 프로그램을 종료시킨다.

				break;

			default:

				System.out.println("메뉴를 잘 못 입력했습니다.");

			}// end switch

		} // end while

	}// end main

	public static void insertCustomerData() {

		System.out.print("이름 : ");

		String name = scan.next();

		System.out.println("이름이" + name + "이 맞습니까? (Y/N)");
		char cname = scan.next().charAt(0);

		while (!(cname == 'Y' || cname == 'y')) {
			System.out.print("이름 : ");
			name = scan.next();
			System.out.println("이름이" + name + "이 맞습니까? (Y/N)");
			cname = scan.next().charAt(0);
		}

		System.out.print("성별(M/F) : ");

		char gender = scan.next().charAt(0);
		while (!(gender == 'M' || gender == 'F' || gender == 'm' || gender == 'f')) {
			System.out.println("양식에 맞게 입력하세요.");
			gender = scan.next().charAt(0);
		}

		System.out.print("이메일 : ");

		String email = scan.next();

		System.out.print("출생년도 : ");

		int birthYear = scan.nextInt();

		// 고객 객체를 배열에 저장

		// count 번째 배열에 객체 저장 후 count 값을 증가시켜야 함

		nameList[count] = name;

		genderList[count] = gender;

		emailList[count] = email;

		birthYearList[count] = birthYear;

		count++;

	}

	// 고객데이터 출력

	public static void printCustomerData() {

		System.out.println("==========CUSTOMER INFO================");

		System.out.println("이름 : " + nameList[index]);

		System.out.println("성별 : " + genderList[index]);

		System.out.println("이메일 : " + emailList[index]);

		System.out.println("출생년도 : " + birthYearList[index]);

		System.out.println("=======================================");

	}

	public static void printIdx() {

		System.out.println("인덱스 번호를 입력하세요");

		index = scan.nextInt();

		System.out.println("==========CUSTOMER INFO================");

		System.out.println("이름 : " + nameList[index]);

		System.out.println("성별 : " + genderList[index]);

		System.out.println("이메일 : " + emailList[index]);

		System.out.println("출생년도 : " + birthYearList[index]);

		System.out.println("=======================================");

	}

	// index 위치의 고객정보를 삭제합니다.

	public static void deleteCustomerData() {

		System.out.println("인덱스 번호를 입력하세요");

		int idx = scan.nextInt();

		for (int i = idx; i < count - 1; i++) {

			nameList[i] = nameList[i + 1];

			genderList[i] = genderList[i + 1];

			emailList[i] = emailList[i + 1];

			birthYearList[i] = birthYearList[i + 1];

		}

		count--;

	}

	// index 위치의 고객 정보를 수정합니다.

	public static void updateCustomerData() {

		System.out.println("---------UPDATE CUSTOMER INFO----------");

		System.out.print("이름(" + nameList[index] + ") :");

		nameList[index] = scan.next();

		System.out.print("성별(" + genderList[index] + ") :");

		genderList[index] = scan.next().charAt(0);

		System.out.print("이메일(" + emailList[index] + ") :");

		emailList[index] = scan.next();

		System.out.print("출생년도(" + birthYearList[index] + ") :");

		birthYearList[index] = scan.nextInt();

	}

}// end class