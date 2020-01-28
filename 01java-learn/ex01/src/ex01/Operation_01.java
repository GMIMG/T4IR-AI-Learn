package ex01;

public class Operation_01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		int num1 = 10;
		int num2 = 20;
		
		boolean flag1 = (++num1 == 10) || (num2++ == 20);
		System.out.println("num1 : " + num1);
		System.out.println("num2 : " + num2);
		System.out.println("flag1 : " + flag1);
		// 거짓 || 참
		
		boolean flag2 = (num1++ == 10) && (++num2 == 20);
		System.out.println("num1 : " + num1);
		System.out.println("num2 : " + num2);
		System.out.println("flag2 : " + flag2);
		// 거짓 && (참 : 실행안함)
	}
}
