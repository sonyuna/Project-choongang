package recipe;

public class ResLike {

	private int no;
	private String userid;
	private int resnum;
	private String likedDate;
	public ResLike(int no, String userid, int resnum, String likedDate) {
		super();
		this.no = no;
		this.userid = userid;
		this.resnum = resnum;
		this.likedDate = likedDate;		
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getResnum() {
		return resnum;
	}
	public void setResnum(int resnum) {
		this.resnum = resnum;
	}
	public String getLikedDate() {
		return likedDate;
	}
	public void setLikedDate(String likedDate) {
		this.likedDate = likedDate;
	}
	
}
	
