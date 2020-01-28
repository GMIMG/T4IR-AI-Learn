package ex01;

import java.util.Scanner;

public class Operation_02 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		int num1 = 0;
		int num2 = 0;
		
		System.out.println("첫번째 숫자를 입력하세요.");
		num1 = scan.nextInt();
		System.out.println("두번째 숫자를 입력하세요.");
		num2 = scan.nextInt();
		System.out.println("더하기 : "+(num1+num2));
		System.out.println("빼기 : "+(num1-num2));
		System.out.println("곱하기: "+(num1*num2));
		if (num2 != 0)
		System.out.println("나누기: "+(num1/num2));
		
		if (num1 == num2)
			System.out.println("같습니다");
		else
		{
			boolean flag1;
			flag1 = (num1 > num2)? true:false;
		
			if (flag1 == true)
				System.out.println("num1이 더큽니다.");
			else
				System.out.println("num2가 더큽니다.");
		}
		scan.close();
	}

}
