public class Compfriend extends Friend{
	String depart;
	public Compfriend(String name, String number,String depart) {
		super(name, number);
		this.depart = depart;
	}
	// alt +shift + s + s
	@Override
	public String toString() {
		return "CompFriend [depart=" + depart + ", name=" + name + ", number=" + number + "]";
	}
}

