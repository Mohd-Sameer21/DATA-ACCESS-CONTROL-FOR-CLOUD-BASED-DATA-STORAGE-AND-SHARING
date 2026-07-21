package com.ServletClasses;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClasses.BeanClassMethods;
import com.Implementation.Implementation;
import com.interfaces.InterfaceMethods;

/**
 * Servlet implementation class reqkey
 */
@WebServlet("/reqkey")
public class reqkey extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reqkey() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String from=request.getParameter("from");
		String fname=request.getParameter("fname");
		String to=request.getParameter("to");
		System.out.println(" from "+ from);
		System.out.println(" fileName "+fname);
		System.out.println(" to "+to);
		
		BeanClassMethods bm=new BeanClassMethods();
		bm.setFrom(from);
		bm.setFname(fname);
		bm.setTo(to);
		
		InterfaceMethods im=new Implementation();
		int k=im.insertrequest(bm);
		System.out.println("The value is "+k);
		
		if(k==1)
		{
			RequestDispatcher rd=request.getRequestDispatcher("User.jsp");
			rd.forward(request,response);
		}else
		{
			RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		}
		
	}

}
