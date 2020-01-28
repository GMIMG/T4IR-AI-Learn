package ex00_01extends;

public class ClassTest {
	

	
	public static void main(String[] args) {
		Animal ani = new Human(3,2);
		
		ani.hp = 130;
		System.out.println(ani.hp);
		
		ani.sethp(150);
		System.out.println(ani.gethp());;
		
		//ani.mp =170;
		//ani.setheight(200);
		
		ani.print();
	}
}
