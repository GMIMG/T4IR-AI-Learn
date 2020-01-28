package ex00_01extends;

public class Animal {

	protected int hp;
	protected int weight;
	
	Animal(int hp, int weight){
		this.hp = hp;
		this.weight = weight;
	}

	public void sethp(int hp) {
		this.hp = hp;
	}

	public int gethp() {
		return this.hp;
	}

	
	public void print() {
		System.out.println("HP = " + this.hp + ", Weight : " + this.weight);
	}

}