package svc;

import java.sql.Connection;

import dao.LoginDAO;
import vo.Member;
import static db.JdbcUtil.*;

public class LoginService {

	public Member getLoginMember(String id, String passwd) {
		LoginDAO loginDAO = LoginDAO.getInstance();
		Connection conn = getConnection();
		loginDAO.setConnection(conn);
		Member loginMember = loginDAO.selectLoginMember(id, passwd);
		if (conn != null)
			close(conn);
		return loginMember;
	}

}
