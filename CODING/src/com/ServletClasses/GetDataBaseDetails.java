package com.ServletClasses;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Implementation.Implementation;
@WebServlet("/GetDataBaseDetails")
public class GetDataBaseDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GetDataBaseDetails() {
        super();       
    }
	@SuppressWarnings("rawtypes")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		Implementation implementation=new Implementation();
		ArrayList[] al=implementation.viewAdminUploadedValue();
		System.out.println("arry value"+al);

		request.getSession().setAttribute("arraylist", al);
		RequestDispatcher rd=request.getRequestDispatcher("check.jsp");
		rd.forward(request,response);
	
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		
		
	
	}
}
