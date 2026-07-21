package com.ServletClasses;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClasses.BeanClassMethods;
import com.BeanClasses.keyBean;
import com.Implementation.Implementation;
import com.interfaces.InterfaceMethods;

/**
 * Servlet implementation class key
 */
@WebServlet("/key")
public class key extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public key() {
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
		
		String fileName=request.getParameter("fname");
		String Recipient=request.getParameter("Recipient");
		String fileOwner=request.getParameter("fowner");
		String key=request.getParameter("key");
		
		System.out.println(fileName);
		System.out.println(Recipient);
		System.out.println(fileOwner);
		System.out.println(key);
		
		keyBean kb=new keyBean();
		kb.setFileName(fileName);
		kb.setRecipient(Recipient);
		kb.setFileOwner(fileOwner);
		kb.setKey(key);
		InterfaceMethods im=new Implementation();
		
		int k=im.insertkey(kb);
		
		
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
