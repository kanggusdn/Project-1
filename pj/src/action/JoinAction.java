package action;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.JoinService;
import vo.ActionForward;
import vo.Member;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		Member member = new Member();
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");		
		String name = request.getParameter("name");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		member.setAddr1(addr1);
		member.setAddr2(addr2);
		member.setAddr3(addr3);
		member.setAge(age);
		member.setEmail(email);
		member.setGender(gender);
		member.setId(id);
		member.setName(name);
		member.setPasswd(passwd);
		JoinService joinservice = new JoinService();
		int joinMember = joinservice.insertMember(member);
		
		if (joinMember > 0) {
			HttpSession session = request.getSession();
			forward = new ActionForward();
			forward.setPath("index.do");
			forward.setRedirect(true);
			session.setAttribute("loginMember", member);

		} else {
			response.setContentType("text/html;charset = UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원가입 실패');");
			out.println("history.back();");
			out.println("</script>");
		}
		return forward;
	}

}
