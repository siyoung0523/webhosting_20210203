
public class Bank{
	public static void main(String[] args) {
		
		Account yoon;
		Account park;
		
		yoon = new Account();
		park = new Account();
		
		yoon.printAl();
		park.printAl();
		
		yoon.setName("À±");
		park.setName("¹Ú");
				
		yoon.setAl(1000);
		park.setAl(3000);
		
		yoon.printAl();
		park.printAl();
		
	}
}
