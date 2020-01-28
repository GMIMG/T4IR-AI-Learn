package customerManager_07mvc;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class CustomerController {
	
	public int count = 0;
	public int index = -1;
	public CustomerView view;
	public CustomerModel model;
	Scanner scan;
	
	public CustomerController(CustomerModel model, CustomerView view, Scanner scan) {
		this.model = model;
		this.view = view;
		this.scan = scan;
	}

	public void menuSelect() {
		view.menuPrompt(this);
	}
	
	public void insertCustomerData() {
		String name;
		char checkname;
		char gender;
		String email;
		int birthYear;
		// 이름입력
		do {
			view.namePrompt();
			name = scan.next();
			view.nameCheckPrompt(name);
			checkname = scan.next().charAt(0);
		}while(!(checkname == 'Y' || checkname == 'y'));
		// 성별입력
		view.genderPrompt();
		gender = checkGender();
		// 이메일 입력
		view.emailPrompt();
		email = scan.next();
		view.birthYearPrompt();
		birthYear = scan.nextInt();
		// 고객 객체를 배열에 저장
		// count 번째 배열에 객체 저장 후 count 값을 증가시켜야 함
		model.add(new Customer(name, gender, email, birthYear));
		this.count++;
	}
	
	public char checkGender() {
		char gender = scan.next().charAt(0);;
		while(!(gender == 'M' || gender == 'F' || gender == 'm' || gender == 'f')){
			view.errForm();
			gender = scan.next().charAt(0);;
		}
		return gender;
	}
	
	public void deleteCustomerData() {
		int idx;
		view.indexPrompt();
		idx = scan.nextInt();
		model.remove(idx);
		count--;
	}
	
	public void updateCustomerData() {
		view.updateIntro();
		view.updateNamePrompt(model,index);
		System.out.print("이름(" + model.get(index).name + ") :");
		model.get(index).name = scan.next();
		System.out.print("성별(" + model.get(index).gender + ") :");
		model.get(index).gender = checkGender();
		System.out.print("이메일(" + model.get(index).email + ") :");
		model.get(index).email = scan.next();
		System.out.print("출생년도(" + model.get(index).birthYear + ") :");
		model.get(index).birthYear = scan.nextInt();
	}
	
	public void printCustomerData() {
		view.printCustomerData(model,index);
	}
	
	public void specificCustomer() {
		view.indexPrompt();
		index = scan.nextInt();
		view.printCustomerData(model,index);
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
			for(Customer customer : model) {
				bufWriter.write(customer.toCSV() + "\r\n");
			}
			bufWriter.flush();
			view.savePrompt();
		} catch (IOException e) {
			System.out.println("예외발생 : "+ e.getMessage());
		} finally {
			try {bufWriter.close();} catch (Exception e) {}
			try { writer.close(); } catch(Exception e) {}
		}
	}
	
	
}
