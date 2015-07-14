package tk.hpk.kidsite;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBFactory {
	static String url = "jdbc:mysql://localhost:3306/happykids";
    static String un = "root";
    static String pw = "";
    static String driver = "com.mysql.jdbc.Driver";
    static Connection con ;
    
    public static Connection getCon() throws Exception{
        if(con==null){
            Class.forName(driver);
            con = DriverManager.getConnection(url, un, pw);
        }
        return con;
    

}
    
}
 
  
