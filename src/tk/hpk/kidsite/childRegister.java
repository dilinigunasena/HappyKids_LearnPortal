package tk.hpk.kidsite;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class childRegister
 */
@WebServlet("/childregister")
public class childRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Read the request from child register form
		String ParentName= request.getParameter("pname");
		String Email= request.getParameter("pemail");
		String ChildName=request.getParameter("chname");
		String stringChildAge= request.getParameter("chage");
		int ChildAge=Integer.parseInt(stringChildAge);
		String ChildGender= request.getParameter("gender");
		String Password= request.getParameter("password");
		String Confirm= request.getParameter("confirmpassword");
		String msg;
		Date date= new Date();
		SimpleDateFormat sdf= new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss:"); 
	  	String dateStr = sdf.format(date);
		
		// process the request
		if(Password.equals(Confirm)){
			String sql="INSERT INTO child_info(parent_name,parent_email,child_name,child_age,child_gender,password,login_time) VALUES(?,?,?,?,?,?,?)" ;
		try {
			Connection con = DBFactory.getCon();
			PreparedStatement ps1= con.prepareStatement(sql);
			ps1.setString(1,ParentName );
			ps1.setString(2, Email);
			ps1.setString(3, ChildName);
			ps1.setInt(4,ChildAge );
			ps1.setString(5,ChildGender );
			ps1.setString(6,Password );
			ps1.setString(7,dateStr );
			ps1.executeUpdate();
			msg="Thanks for Registering with us hope you enjoy the learning..!!";
		} catch (Exception e) {
			e.printStackTrace();
			msg= "Ooops we got some Error"+e.getMessage();
		}	
		}
		
		else{
			msg= "Password Mismatch please retry";
		}
		
		//Generate the Response
		PrintWriter out= response.getWriter();
		out.println("<h1>"+msg+"</h1>");
		
	}

}
