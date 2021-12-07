package model;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public void addMember(MemberDTO dto) {
		
	}
	
	public String memberLogin() {
		return "";
	}
}
