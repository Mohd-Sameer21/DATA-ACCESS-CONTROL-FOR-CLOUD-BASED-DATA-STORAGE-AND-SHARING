package com.ServletClasses;


import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClasses.BeanClassMethods;
import com.BeanClasses.UploadBean;
import com.Implementation.Implementation;
import com.interfaces.InterfaceMethods;


/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Register() {
        super();
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int i=0;
		UploadBean bean=new UploadBean();
		Random random=new Random();
		int key=random.nextInt(1234567890);
		bean.setKey(key);
		long sss=bean.getKey();
		System.out.println(key+"keyyyy value"+sss);
		String username=request.getParameter("name");
		String password=request.getParameter("password");
		String rpassword=request.getParameter("RPassword");
		String Gender=request.getParameter("Gender");
		String mail=request.getParameter("mail");
		String number=request.getParameter("number");
		String address=request.getParameter("address");
		String dat=request.getParameter("dat");
		String nat=request.getParameter("nation");
		File file=new File(username);
		file.mkdir();
		
		System.out.println(username+password+rpassword+Gender+mail+number+address);
		BeanClassMethods bm=new BeanClassMethods();
		bm.setUsername(username);
		bm.setPassword(password);
		bm.setRpassword(rpassword);
		bm.setGender(Gender);
		bm.setMailid(mail);
		bm.setNumber(number);
		bm.setAddress(address);
		bm.setDat(dat);
		bm.setNat(nat);
		
		HttpSession session = request.getSession();
		session.setAttribute("key", sss);
		
		InterfaceMethods im=new Implementation();
		System.out.println("after implementation");
		 i=im.register(bm);
		if(i>0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("Registersucess.jsp");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		}
	}

}
