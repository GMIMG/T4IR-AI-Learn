package customerManager_06save;

import java.util.ArrayList;
import java.util.Scanner;
//import java.io.FileInputStream;
//import java.io.FileOutputStream;
import java.io.IOException;
import java.io.BufferedWriter;
import java.io.FileWriter;

public class CustomerManager {

	int count;
	int index;

	Scanner scan = new Scanner(System.in);
	ArrayList<Customer> custList = new ArrayList<Customer>();

	CustomerManager(int count, int index) {
		this.count = count;
		this.index = index;
	}

	public void insertCustomerData() {
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
		// custList[count] = new Customer(name, gender, email, birthYear);
		custList.add(new Customer(name, gender, email, birthYear));
		count++;

	}

	// 고객데이터 출력
	public void printCustomerData() {
		System.out.println("==========CUSTOMER INFO================");
		System.out.println("이름 : " + custList.get(index).name);
		System.out.println("성별 : " + custList.get(index).gender);
		System.out.println("이메일 : " + custList.get(index).email);
		System.out.println("출생년도 : " + custList.get(index).birthYear);
		System.out.println("=======================================");
	}

	public void printIdx() {
		System.out.println("인덱스 번호를 입력하세요");
		index = scan.nextInt();
		System.out.println("==========CUSTOMER INFO================");
		System.out.println("이름 : " + custList.get(index).name);
		System.out.println("성별 : " + custList.get(index).gender);
		System.out.println("이메일 : " + custList.get(index).email);
		System.out.println("출생년도 : " + custList.get(index).birthYear);
		System.out.println("=======================================");

	}

	// index 위치의 고객정보를 삭제합니다.
	public void deleteCustomerData() {
		System.out.println("인덱스 번호를 입력하세요");
		int idx = scan.nextInt();
		custList.remove(idx);
		count--;
	}

	// index 위치의 고객 정보를 수정합니다.
	public void updateCustomerData() {
		System.out.println("---------UPDATE CUSTOMER INFO----------");
		System.out.print("이름(" + custList.get(index).name + ") :");
		custList.get(index).name = scan.next();
		System.out.print("성별(" + custList.get(index).gender + ") :");
		custList.get(index).gender = scan.next().charAt(0);
		System.out.print("이메일(" + custList.get(index).email + ") :");
		custList.get(index).email = scan.next();
		System.out.print("출생년도(" + custList.get(index).birthYear + ") :");
		custList.get(index).birthYear = scan.nextInt();
	}

	public void saveCustomerData() {
		String fileName = "Customer.csv";
		FileWriter writer = null;
		BufferedWriter bufWriter =null;
		try {
			writer =new FileWriter(fileName);
			bufWriter = new BufferedWriter(writer);
			/*
			bufWriter = new BufferedWirter(
							new OutputSTreamWriter(
									new FileOutputSTream(fileName), "euc-kr")
							);
							*/
			for(Customer customer : custList) {
				bufWriter.write(customer.toCSV() + "\r\n");
			}
			
			bufWriter.flush();
			System.out.println("저장되었습니다.");
		} catch (IOException e) {
			System.out.println("예외발생 : "+ e.getMessage());
		} finally {
			try {bufWriter.close();} catch (Exception e) {}
			try { writer.close(); } catch(Exception e) {}
		}
	}
}// end class