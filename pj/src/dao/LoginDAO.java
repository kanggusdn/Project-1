package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.Member;

public class LoginDAO {
	private static LoginDAO loginDAO;
	private Connection conn;
	private PreparedStatement pstmt;

	public LoginDAO() {

	}

	public static LoginDAO getInstance() {
		if (loginDAO == null) {
			loginDAO = new LoginDAO();
		}
		return loginDAO;
	}

	public void setConnection(Connection conn) {
		this.conn = conn;
	}

	public int join(Member member) {
		String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setInt(4, member.getAge());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getAddr1());
			pstmt.setString(8, member.getAddr2());
			pstmt.setString(9, member.getAddr3());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

	public Member selectLoginMember(String id, String passwd) {
		// TODO Auto-generated method stub
		Member loginMember = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from member where id = ? and passwd = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				loginMember = new Member();
				loginMember.setAddr1(rs.getString("addr1"));
				loginMember.setAddr2(rs.getString("addr2"));
				loginMember.setAddr3(rs.getString("addr3"));
				loginMember.setAge(rs.getInt("age"));
				loginMember.setEmail(rs.getString("email"));
				loginMember.setGender(rs.getString("gender"));
				loginMember.setId(rs.getString("id"));
				loginMember.setName(rs.getString("name"));
				loginMember.setPasswd(rs.getString("passwd"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					close(rs);
				if (pstmt != null)
					close(pstmt);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return loginMember;
	}

	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		int joinMember = 0;
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setInt(4, member.getAge());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getAddr1());
			pstmt.setString(8, member.getAddr2());
			pstmt.setString(9, member.getAddr3());
			
			joinMember = pstmt.executeUpdate();
			commit(conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			rollback(conn);
		} finally {
			try {
				if (pstmt != null)
					close(pstmt);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return joinMember;
	}

}
