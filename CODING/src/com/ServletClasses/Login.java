package com.ServletClasses;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClasses.BeanClassMethods;
import com.Implementation.Implementation;
import com.interfaces.InterfaceMethods;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String username=request.getParameter("name");
		String password=request.getParameter("Password");
		System.out.println(username+password+"Login Input Values");
		BeanClassMethods bm=new BeanClassMethods();
		bm.setUsername(username);
		bm.setPassword(password);
		
		HttpSession session=request.getSession();
		session.setAttribute("username", username);
		System.out.println(username+password);
InterfaceMethods im=new Implementation();
boolean i=im.login(bm);
if(i==true)
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
