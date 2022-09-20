import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener 
{
	public void contextInitialized(ServletContextEvent evt) 
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","mysql");
			ServletContext context=evt.getServletContext();
			String query="insert into customerinfo values(?,?,?,?,?,?)";
			PreparedStatement psave=cn.prepareStatement(query);
			context.setAttribute("save",psave);
			Statement st=cn.createStatement();
			context.setAttribute("st",st);
			query="delete from customerinfo where cid=?";
			PreparedStatement pdelete=cn.prepareStatement(query);
			context.setAttribute("delete",pdelete);
			query="select * from customerinfo where cid=?";
			PreparedStatement pselect=cn.prepareStatement(query);
			context.setAttribute("select",pselect);
			query="update customerinfo set firstname=?,lastname=?,city=?,phone=?,email=? where cid=?";
			PreparedStatement pupdate=cn.prepareStatement(query);
			context.setAttribute("update",pupdate);
			Statement stcity=cn.createStatement();
			context.setAttribute("city",stcity);
			query="select * from customerinfo where city=?";
			PreparedStatement pcity=cn.prepareStatement(query);
			context.setAttribute("pcity",pcity);
			query="select * from customerinfo where firstname=?";
			PreparedStatement pname=cn.prepareStatement(query);
			context.setAttribute("pname",pname);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
	
}
