package com.ServletClasses;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClasses.UploadBean;
import com.Implementation.Implementation;

/**
 * Servlet implementation class ChangeTable
 */
@WebServlet("/ChangeTable")
public class ChangeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChangeTable() {
		super();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("rawtypes")
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * Enumeration<String> e = request.getParameterNames();
		 * while(e.hasMoreElements()){ String name=e.nextElement();
		 * System.out.println(name +" = "+request.getParameter(name)); }
		 */
		response.setContentType("text/html");
		System.out.println("tname = "+request.getParameter("tname"));
		Implementation implementation = new Implementation();
		UploadBean bean = new UploadBean();
		String filename = request.getParameter("filename");
		String filesize = request.getParameter("filesize");
		String filepath = request.getParameter("filepath");
		String key = request.getParameter("key");
		String from = request.getParameter("tname");
		String to = request.getParameter("to");
String use=request.getParameter("user");
		double d = Double.parseDouble(filesize);

		bean.setFilename(filename);
		bean.setFileSize1(d);
		bean.setFilepath(filepath);
		bean.setUserkey(key);
		bean.setFrom(from);
		bean.setTo(to);
	bean.setUsername(use);
		System.out.println(filename + d + "fileSize" + key + from + to);

		int j = implementation.insertTable(bean);
		if (j > 0) {
			int i = implementation.deleteTable(bean);
			if (i > 0) {
				ArrayList[] al = implementation.viewAdminUploadedValue();
				System.out.println("arry value" + al);
				request.getSession().setAttribute("arraylist", al);
				RequestDispatcher rd = request.getRequestDispatcher("content.jsp");
				rd.include(request, response);
				//response.sendRedirect("DataBaseDetails.jsp");
			}
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.include(request, response);
		}
		// ArrayList[] al = implementation.viewAdminUploadedValue();
		// System.out.println("arry value" + al);
		//
		// request.getSession().setAttribute("arraylist", al);
		// RequestDispatcher rd = request
		// .getRequestDispatcher("DataBaseDetails.jsp");
		// rd.forward(request, response);
	}

}
