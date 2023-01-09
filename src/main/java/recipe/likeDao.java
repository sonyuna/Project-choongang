package recipe;

import java.io.FileReader;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class likeDao {
		private static likeDao dao = new likeDao(); 
		private likeDao() {}
		public static likeDao getInstance() {
			return dao;	
		}

		private Connection conn = getConnect();
		
		private Connection getConnect() {

			try {
				Properties prop = new Properties();
				String path = likeDao.class.getResource("db.properties").getPath();
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
		
	//맛집 like 조회수
	 public ResLike resLike(int num){
		      String sql = "select count(*) from res_liked = ?";
		  		ResLike res =null;
		  		try {
		  			PreparedStatement pstm = conn.prepareStatement(sql);
		  			pstm.setInt(1, num);
		  			ResultSet rs = pstm.executeQuery();
		  			if (rs.next()) {
		  				int	resno = rs.getInt("no");
		  				String uid = rs.getString("user_id");
		  				int resnum = rs.getInt("res_num");
		  				String likedate = rs.getString("liked_date");
		 
		  			res = new ResLike(resno, uid, resnum, likedate );

		  			}
		  			rs.close();
		  			pstm.close();
		  			return res;

//		  			return 
		  		} catch (SQLException e) {
		  			// TODO Auto-generated catch block
		  			e.printStackTrace();
		  		}

		  		return null;

		  	}
	 //레시피 like 전체count
	 
	 public void recipeLike(int no) {
		    try {
		      String sql = "select count(*) from rec_liked = ?";
		      PreparedStatement psmt = conn.prepareStatement(sql);
		      psmt.setInt(1, no);
		      psmt.executeUpdate();
		      
		      if(psmt != null) psmt.close();
		      
		      sql = "update recipe_liked set readnum = readnum - 1 where count = ?";
		      psmt = conn.prepareStatement(sql);
		      psmt.setInt(1, no);
		      psmt.executeUpdate();
		      
		    } catch (SQLException e) {
		      System.out.println("SQL 에러 : " + e.getMessage());
		      e.printStackTrace();
		    }
		  }

	 //레시피 
}
