
public class Manager {

	public static void main(String[] args) {
		
		Friend[] friends = new Friend[10];
		
		friends[0] = new UniFriends("대학교친구1", "010123123", "컴퓨터");
		friends[1] = new UniFriends("대학교친구2", "010333333", "컴퓨터");
		
		friends[2] = new Compfriend("직장친구1", "010444444", "개발1팀");
		friends[3] = new Compfriend("직장친구2", "010455555", "개발2팀");
		
		for(int i =0; i<friends.length; i++) {
			System.out.println("friends["+i+"]"+friends[i]);
		}
	}
}

