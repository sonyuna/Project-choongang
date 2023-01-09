package recipe;

import java.io.FileReader;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class Dao {
	
	private static Dao dao = new Dao(); 
	private Dao() {}
	public static Dao getInstance() {
		return dao;	
	}

	private Connection conn = getConnect();
	
	private Connection getConnect() {

		try {
			Properties prop = new Properties();
			String path = Dao.class.getResource("db.properties").getPath();
			path = URLDecoder.decode(path, "utf-8");

			prop.load(new FileReader(path));
			String driver = prop.getProperty("driver");

			Class.forName(driver);
			String url = prop.getProperty("url");
			String user = prop.getProperty("user");
			String pw = prop.getProperty("pw");

			Connection conn = DriverManager.getConnection(url, user, pw);
			return conn;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	//회원가입
	public int insertData(Member mem){
	
		try {

		String sql = "insert into member (user_id,password,name,birth,address,nickname,phone,email)"
				+ " values (?,?,?,?,?)";
			PreparedStatement psmt = conn.prepareStatement(sql);	
			psmt.setString(1, mem.getUserid());
			psmt.setString(2, mem.getPassword());
			psmt.setString(3, mem.getName());
			psmt.setString(4, mem.getBirth());
			psmt.setString(5, mem.getAddress());
			psmt.setString(6, mem.getNickname());
			psmt.setString(7, mem.getPhone());
			psmt.setString(8, mem.getEmail());
				
			int res = psmt.executeUpdate();
			psmt.close();
			return res;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return 0;
	}
	
	//회원정보 전체목록 검색
	public List<Member> memberSearchAll() {
		conn = getConnect();
		String sql = "select * from member";
		List<Member> list = new ArrayList<>();
			try {
					PreparedStatement psmt = conn.prepareStatement(sql);
					ResultSet rs = psmt.executeQuery();
				while(rs.next()) {
					String id = rs.getString("user_id");
					String pw = rs.getString("password");
					String name = rs.getString("name");
					String birth = rs.getString("birth");
					String addr = rs.getString("address");
					String nick = rs.getString("nickname");
					String phone = rs.getString("phone");
					String email = rs.getString("email");
					Member dto = new Member(id,pw,name,birth,addr,nick,phone,email);
					list.add(dto);
					}
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("memberSearchAll() Exception!!!");
				} 
				return list;
			} 
		
	//로그인시 아이디에 해당하는 정보가져올때 사용
	//회원정보 수정시에 수정화면에 가져올때 사용 회원 ID검색
	
	public Member getReadId(String userid){
		
		String sql = "select user_id,password,name,birth,address,nickname,phone,email "
				+ "from member where userid=?";
		Member member = null;
		try {
		
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, userid);
			ResultSet rs = psmt.executeQuery();

			if(rs.next()){

				member.setUserid(rs.getString("user_id"));
				member.setPassword(rs.getString("password"));
				member.setName(rs.getString("name"));
				member.setBirth(rs.getString("birth"));
				member.setAddress(rs.getString("address"));
				member.setNickname(rs.getString("nickname"));
				member.setPhone(rs.getString("phone"));
				member.setEmail(rs.getString("email"));
			}
			rs.close();
			psmt.close();	
		
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return member;
	}
	
	//회원정보 수정
	
	public int updateMember(Member mem){
		int result =0;
		String sql = "update member set password=?,name=?,birth=?,address=?, nickname=?, phone=?, email=? "
				+ "where user_id=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, mem.getPassword());
			pstm.setString(2, mem.getName());
			pstm.setString(3, mem.getBirth());
			pstm.setString(4, mem.getNickname());
			pstm.setString(5, mem.getAddress());
			pstm.setString(6, mem.getNickname());
			pstm.setString(7, mem.getPhone());
			pstm.setString(8, mem.getEmail());
			pstm.setString(9, mem.getUserid());
			
			result= pstm.executeUpdate();
			pstm.close();

		} catch (Exception e) {

			System.out.println(e.toString());
		}
		return result;
	}
	
	//회원 정보 삭제
	public int deleteMember(int mem) {
		int result = 0;
		String sql = "delete from member where user_id =?";

		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, mem);
			result = pstm.executeUpdate();
			pstm.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return result;
		
	}
	
	
	
}
