package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public void addMember(MemberDTO dto) {
		Connection conn = null;
		PreparedStatement ps = null;
		String url = "jdbc:mysql://localhost:3306/communityDB";
		String user = "root";
		String password = "1234";
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			String sql = "insert into member value(?, ?, ?, ?, ?, ?)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getId());
			ps.setString(3, dto.getPassword());
			ps.setString(4, dto.getPhone());
			ps.setString(5, dto.getEmail());
			ps.setString(6, dto.getAddress());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
				try {
					if(ps != null)
						ps.close();
					if(conn != null)
						conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException(e.getMessage());
				}
		}
	}
	
	public boolean memberLogin(String Id, String passwd) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean result = false;
		String url = "jdbc:mysql://localhost:3306/communityDB";
		String user = "root";
		String password = "1234";
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			String sql = "select password from member where id=?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, Id);
			rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString("password").equals(passwd))
					result = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
				try {
					if(rs != null)
						rs.close();
					if(ps != null)
						ps.close();
					if(conn != null)
						conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException(e.getMessage());
				}
		}
		return result;
	}
}
