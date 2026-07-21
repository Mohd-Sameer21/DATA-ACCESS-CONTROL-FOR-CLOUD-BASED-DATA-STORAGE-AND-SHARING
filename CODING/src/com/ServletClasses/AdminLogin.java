package com.ServletClasses;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
		String admin_username=request.getParameter("adminname");
		String admin_password=request.getParameter("adminpass");
		String fileToupload = getServletContext().getRealPath("/");		
		fileToupload = fileToupload.substring(0, fileToupload.indexOf("."))+"MJNS09_2025/WebContent/Filestorage/";
		File  file=new File(fileToupload);
		long size=0;   
		if( file.isDirectory()){
			   File[] listoffiles=file.listFiles();
			   for(File size1:listoffiles){
				   size=size+size1.length();
			   }
			 System.out.println( file.length());
			 System.out.println(size+"sizeee");
			 double d=size/1048576;
			 System.out.println(d+"mb");
			 HttpSession session=request.getSession();
			 session.setAttribute("foldersize", size);
			 session.setAttribute("sizeinMB", d);
	}
		if (admin_username.equals("admin") && (admin_password.equals("admin"))) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin.jsp");
			dispatcher.forward(request, response);

		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);

		}
	}

}
