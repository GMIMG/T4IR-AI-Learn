package ex2;

import java.util.Scanner;

public class Scan {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("1.덧셈, 2.뺼셈, 3.곱셈, 4.나눗셈, 5.종료 : ");
		
		int oper = scan.nextInt();
		
		while(oper != 5) {
			
			System.out.println("첫번째 수를 입력");
			
			int num1 = scan.nextInt();
			
			System.out.println("두번째 수를 입력");
			
			int num2 = scan.nextInt();
			
	
			switch(oper) {
			case 1:
				System.out.println(num1+num2);
				break;
			case 2:
				System.out.println(num1-num2);
				break;
			case 3:
				System.out.println(num1*num2);
				break;
			case 4:
				System.out.println(num1/num2);
				break;
			}
		}
		scan.close();
	}

}
