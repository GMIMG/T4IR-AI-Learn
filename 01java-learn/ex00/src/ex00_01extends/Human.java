package ex00_01extends;

public class Human extends Animal {
	
	private int mp;
	protected int height;

	public void setmp(int mp) {
		this.mp = mp;
	}

	public int getmp() {
		return this.mp;
	}
	
	public void print() {
		System.out.println("HP = " + this.hp + ", Weight : " + this.weight + ", MP : " + this.mp + ", Height : " + this.height );
	}

	Human(int mp,int height){
		super(1, 1);
		this.mp = mp;
		this.height = height;
	}
}
