package recipe;
//Member DTO or VO 라고 한다.
public class Member {

	private String userid;
	private String password;
	private String name;
	private String birth;
	private String address;
	private String nickname;
	private String phone;
	private String email;

	public Member(String userid, String password, String name, String birth, String address, String nickname,
			String phone, String email) {
		super();
		this.userid = userid;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.address = address;
		this.nickname = nickname;
		this.phone = phone;
		this.email = email;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
