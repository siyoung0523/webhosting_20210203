package DB;

public class BUYTBL {
	public int idnum;
	public String userid;
	public String prodname;
	public String groupname;
	public int price;
	public int amount;
	// 1 setter...
	// 2 �����ڷ�...
	public BUYTBL(int idnum,String userid,String prodname, String groupname,int price,int amount){
		this.idnum = idnum;
		this.userid = userid;
		this.prodname = prodname;
		this.groupname = groupname;
		this.price = price;
		this.amount = amount;
	}
	public void print(){
		System.out.println("���Ź�ȣ�� "+idnum+"�Դϴ�");
		System.out.println("���̵�"+userid+"�Դϴ�");
		System.out.println("��ǰ�̸��� "+prodname+"�Դϴ�");
		System.out.println("�׷��̸���"+groupname+"�Դϴ�");
		System.out.println("������"+price+"�Դϴ�");
		System.out.println("�Ǹŷ���"+amount+"�Դϴ�");
		System.out.println();
		System.out.println();
	}
}
