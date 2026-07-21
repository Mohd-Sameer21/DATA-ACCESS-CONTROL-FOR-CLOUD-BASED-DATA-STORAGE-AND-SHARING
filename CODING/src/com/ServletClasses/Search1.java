package com.ServletClasses;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClasses.UploadBean;
import com.Implementation.Implementation;
import com.interfaces.InterfaceMethods;

/**
 * Servlet implementation class Search1
 */
@WebServlet("/Search1")
public class Search1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search1() {
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
		UploadBean bean=new  UploadBean();
		String getkey=request.getParameter("search");
		bean.setUserkey(getkey);
		System.out.println(getkey+"vvvvvvvvvvaaaaaaalue");
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("keyy", getkey);
		String keyy=httpSession.getAttribute("keyy").toString().trim();
		System.out.println(keyy+"======================");
		InterfaceMethods methods=new Implementation();
	   ArrayList<String> i= methods.userSearch1(bean,keyy);
	   System.out.println(i.size()+"==sssss");
	   httpSession.setAttribute("search", i);
	   System.out.println(i);
	   response.sendRedirect("DisplayUserUploadDetails1.jsp");
	}

}
