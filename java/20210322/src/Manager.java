
public class Manager {

	public static void main(String[] args) {
		
		Friend[] friends = new Friend[10];
		
		friends[0] = new UniFriends("���б�ģ��1", "010123123", "��ǻ��");
		friends[1] = new UniFriends("���б�ģ��2", "010333333", "��ǻ��");
		
		friends[2] = new Compfriend("����ģ��1", "010444444", "����1��");
		friends[3] = new Compfriend("����ģ��2", "010455555", "����2��");
		
		for(int i =0; i<friends.length; i++) {
			System.out.println("friends["+i+"]"+friends[i]);
		}
	}
}

