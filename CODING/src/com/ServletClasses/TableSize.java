package com.ServletClasses;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Implementation.Implementation;

@WebServlet("/TableSize")
public class TableSize extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public TableSize() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Implementation im=new Implementation();
		HashMap<String, Double> i=im.tableSize();
		System.out.println("string value"+i);
		 HttpSession session=request.getSession();
		 session.setAttribute("i", i);
		if (i.size()>0){
			RequestDispatcher dispatcher = request.getRequestDispatcher("TableSize.jsp");
			dispatcher.forward(request, response);

		} else 
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
