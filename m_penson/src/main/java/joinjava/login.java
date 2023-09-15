package joinjava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {
 	dbconfig  db =null;   
    PreparedStatement ps = null;
    RequestDispatcher rd = null;
	private static final long serialVersionUID = 1L;
    public login() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String id =  request.getParameter("mid").intern();
		String pw =  request.getParameter("mpw").intern();
		//원래 밖으로 빼야되는 부분
		dbconfig db = new dbconfig();
		PreparedStatement ps = null;
		HttpSession se= request.getSession();
		PrintWriter pwr = response.getWriter();
		try {			
			/* 사용자 아이디와 패스워드를 database에서 가져오는 코드*/
			Connection con =db.dbinfo();
			String sql = "select * from member_penson where mid=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id); //아이디값
			ResultSet rs = ps.executeQuery();
		
			String sql_id = ""; //DB에 저장된 사용자 아이디
			String sql_pw = ""; //DB에 저장된 사용자 패스워드
			String sql_name = ""; //DB에 저장된 사용자 패스워드
 			while(rs.next()) { //Database에서 문자형 변수로 변환 작업하는 코드
				sql_id = rs.getString("mid").intern();
				sql_pw = rs.getString("mpass").intern();
				sql_name = rs.getString("mname").intern();
			}
 			con.close();
 			ps.close();
 			if(sql_id=="") {  //sql문법 실행시 해당 정보가 없을 경우 
 				pwr.write("<script>alert('해당 사용자 정보를 확인하지 못하였습니다.');"
 						+ "history.go(-1);</script>");
 			}else { //id가 확인 되고, 패스워드를 검토할 때 사용
 	 			if(sql_pw==pw && sql_id ==id) { //동일한 패스워드일 경우
 	 					se.setAttribute("userid",sql_id);
 	 					se.setAttribute("userpw",sql_pw);
 	 					se.setAttribute("username",sql_name);
 	 					pwr.write("<script>alert('로그인 하셨습니다.');"
 	 							+ "location.href='./index.jsp'</script>");
 	 			}else {
 	 				pwr.write("<script>alert('패스워드가 틀립니다');"
 	 						+ "history.go(-1);</script>");
 	 			}
 			}
 			pwr.close();
		}
		catch(Exception e) {
			System.out.println("DB 접속 오류 사항 발생!");
			System.out.println(e);
		}
		
	}
}