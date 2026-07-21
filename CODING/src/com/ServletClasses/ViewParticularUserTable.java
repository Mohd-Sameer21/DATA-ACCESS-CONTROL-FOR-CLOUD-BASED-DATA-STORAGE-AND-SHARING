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

import com.BeanClasses.UploadBean;
import com.Implementation.Implementation;
@WebServlet("/ViewParticularUserTable")

public class ViewParticularUserTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
 UploadBean uploadBean=new UploadBean();
    public ViewParticularUserTable() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		uploadBean.setUsername(username);
		Implementation implementation=new Implementation();
		@SuppressWarnings("rawtypes")
		ArrayList[] isdataretrive=implementation.retriveUserData(username);
		request.getSession().setAttribute("arraylist", isdataretrive);
		RequestDispatcher rd=request.getRequestDispatcher("ViewUserValueTable.jsp");
		rd.forward(request,response);
		
//	if(isdataretrive != null)
//	{
/*			RequestDispatcher rd=request.getRequestDispatcher("ViewUserValueTable.jsp");
			rd.forward(request,response);*/
/*		}else
	{
			RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		}*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		
	}

}
