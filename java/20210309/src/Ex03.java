
public class Ex03 {

	public static void main(String[] args) {
		String str1 = "Sinple String";
		String str2 = "Sinple String";
		
		String str3 = new String("Sinple String");
		String str4 = new String("Sinple String");
		
		if(str1 == str2)
		{
			System.out.println("������ �ּҰ�");
		}
		if(str3 == str4)
		{
			
		}
		else
		{
			System.out.println("�ٸ� �ּҰ�");
		}
		if(str3.equals(str4))
			System.out.println("���� ���̴�.");
	
	}
}