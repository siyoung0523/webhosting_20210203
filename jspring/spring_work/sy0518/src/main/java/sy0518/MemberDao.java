package sy0518;

import java.util.ArrayList;
import java.util.List;

public class MemberDao {

	List<MemberDTO> list = new ArrayList<MemberDTO>();
	
	public void doInsert() {
		MemberDTO mdto = new MemberDTO("ȫ�浿");
		list.add(mdto);
		System.out.println("�����߽��ϴ�.");
	}
}
