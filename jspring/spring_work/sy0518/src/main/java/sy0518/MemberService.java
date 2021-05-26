package sy0518;

public class MemberService {

	MemberDao memberdao;
	
	public MemberService(MemberDao memberdao) {
		this.memberdao = memberdao;
	}
	
	public void insert() {
		memberdao.doInsert();
	}
}
