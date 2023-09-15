package joinjava;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class join extends HttpServlet {
	private static final long serialVersionUID = 1L;
    dbconfig  db =null;   
    PreparedStatement ps = null;
  
    public join() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String mid = request.getParameter("mid").intern();
		String mname = request.getParameter("mname").intern();
		String mpw = request.getParameter("mpw").intern();
		String mtel = request.getParameter("mtel").intern();
		String memail = request.getParameter("memail").intern();
		PrintWriter pw = response.getWriter(); //스크립트 출력
		if (mid==""||mname==""||mpw==""||mtel==""||memail=="") {
			pw.write("<script>"
					+"alert('올바른 정보가 전달 되지 않으셨습니다');"
					+"history.go(-1);"
					+"</script>");
		}else {
			try {
				this.db = new dbconfig();
				Connection con = this.db.dbinfo();
				//람다식 형태의 코드로 작성
				String sql = "insert into member_penson values("
				+"'0',?,?,?,?,?,now())"; //람다식 방식 ?만 세서 1번  부터
				this.ps = con.prepareStatement(sql);
				this.ps.setString(1, mid);
				this.ps.setString(2, mname);
				this.ps.setString(3, mpw);
				this.ps.setString(4, memail);
				this.ps.setString(5, mtel);
				System.out.println(mid);
				System.out.println(mname);
				System.out.println(mpw);
				System.out.println(memail);
				System.out.println(mtel);
				int call = this.ps.executeUpdate();
				String msg =  "";
				System.out.println(call);
				if(call > 0) {
					msg ="정상적으로 가입이 완료 되었습니다";
					pw.write("<script> alert('"+msg+"'); location.href='./index.jsp';</script>");
				}
				else{
					msg ="가입이 원할하게 진행 되지 않았습니다";
				};
				pw.close();
				this.ps.close();
				con.close();
			}
			catch(Exception e) {
				System.out.println(e);
				System.out.println("Database 정보 오류!!");
			}
		}
	}
}
