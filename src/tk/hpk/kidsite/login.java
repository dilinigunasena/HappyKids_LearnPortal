package tk.hpk.kidsite;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// Read the request from child login form
		String username= request.getParameter("username");
		String password = request.getParameter("Password");
		String msg = null;
		
	// Process the request
		String sql = "SELECT * FROM child_info WHERE password='?' AND parent_email='?'";
		try {
			java.sql.Connection con= DBFactory.getCon();
			PreparedStatement ps2= con.prepareStatement(sql);
			ps2.setString(1, password);
			ps2.setString(2,username );
			ps2.executeUpdate();
			ResultSet rs = ps2.getResultSet();
			if (rs.next()) {
				msg="Successfully logged in"+rs;
									}
		} catch (Exception e) {
			 e.printStackTrace();
			 msg="Oooops We got some error"+e.getMessage();
		}
		
		//Generate the response
		PrintWriter out = response.getWriter();
		out.println("<h1>"+msg+"</h1>");	
		}

}
