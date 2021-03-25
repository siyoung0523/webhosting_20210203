public class UniFriends extends Friend{
	String major;
	public UniFriends(String name, String number,String major) {
		super(name, number);
		this.major = major;
	}
	@Override
	public String toString() {
		return "UniFriend [major=" + major + ", name=" + name + ", number=" + number + "]";
	}
//	@Override
//	public void doA() {	
//	}
}
