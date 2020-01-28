package ex03_1;

import java.util.Scanner;

public class ex03_1 {

	public static void main(String[] args) {
		// 기본 입력장치로부터 데이터를 입력받기 위해 Scanner객체 생성
		Scanner scan = new Scanner(System.in);
		// 기본 변수 선언
		int num1 = 0;
		int num2 = 0;
		int c = 1;
		while (true) {
			// 메뉴 출력
			System.out.println("더하기:1, 빼기:2, 곱하기:3, 나누기:4 , 종료 :5 입력하세요.");
			c = scan.nextInt();
			if (c == 5) break;

			System.out.println("첫번째 숫자를 입력하세요.");
			num1 = scan.nextInt();
			System.out.println("두번째 숫자를 입력하세요.");
			num2 = scan.nextInt();
			// 조건분기
			switch (c) {
			case 1:
				// 더하기 연산 연습
				System.out.println("더하기 : " + (num1 + num2));
				break;
			case 2:
				// 빼기 연산 연습
				System.out.println("빼기 : " + (num1 - num2));
				break;
			case 3:
				// 곱하기 연산 연습
				System.out.println("곱하기 : " + (num1 * num2));
				break;
			case 4:
				// 나누기 연산 연습
				if (num1 > 0 && num2 > 0)
					System.out.println("나누기 : " + (num1 / num2));
				else
					System.out.println("0으로 나눌수없읍니다.");
			}
		}
		// 사칙 연산 로직을 완성 하시오.

		// 논리 연산 로직을 완성 하시오. (&&, ||, !)

		// 첫번째 숫자와 두번째 숫자의 크기를 비교하시오.
//		System.out.println("첫번째 숫자를 입력하세요.");
//		num1 = scan.nextInt();
//		System.out.println("두번째 숫자를 입력하세요.");
//		num2 = scan.nextInt();
//		String msg = "";
//		msg = num1 > num2 ? "첫번째" : "두번째";
//		System.out.println(msg + " 가 더 큽니다.");

		scan.close();
	}

}
