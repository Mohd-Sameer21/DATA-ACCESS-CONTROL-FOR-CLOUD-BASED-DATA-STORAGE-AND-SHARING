package com.ServletClasses;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClasses.*;
import com.Implementation.Implementation;
import com.interfaces.InterfaceMethods;

/**
 * Servlet implementation class SendFile
 */
@WebServlet("/SendFile")
public class SendFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendFile() {
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
		HttpSession session=request.getSession();
		String filename=request.getParameter("filename");
		//Double filesize=request.getParameter("filesize");
		String filepath=request.getParameter("filepath");
		String key=request.getParameter("key");
		String username=(String)session.getAttribute("username");
		String ReciverName=request.getParameter("ReciverName");
		
		 UploadBean uploadBean=new UploadBean();
		 
		uploadBean.setFilename(filename);
		//uploadBean.setFilesize1(filesize);
		uploadBean.setFilepath(filepath);
		uploadBean.setUserkey(key);
		uploadBean.setUsername(username);
		uploadBean.setReciverName(ReciverName);
		InterfaceMethods im=new Implementation();
			
		
		int status =im.sendfiles(uploadBean);
	
		if(status==1)
		{
			response.sendRedirect("FileSendSuccessfully.jsp?filename="+filename+"&username="+status);
		}
		else
		{
			
		}	
		
	/*	RequestDispatcher rd=request.getRequestDispatcher("ViewUserValueTable.jsp");
		rd.forward(request,response);
		
	}*/
		
	}

}
