package com.ServletClasses;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClasses.UploadBean;
import com.Implementation.UploadValues;
import com.interfaces.UploadInterface;
import com.itextpdf.text.pdf.codec.Base64.InputStream;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import encryption.security;

@WebServlet("/UploadFile")
public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UploadBean bean = new UploadBean();

	public UploadFile() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {	
	HttpSession httpSession=request.getSession();
	String key=(String)httpSession.getAttribute("key").toString();
	bean.setUserkey(key);
		double insert = 0;

		MultipartParser mp = new MultipartParser(request, 999999999);
		Part part = null;
		FilePart filePart = null;
		ParamPart paramPart = null;
		
		while ((part = mp.readNextPart()) != null) {
			String fileToupload = getServletContext().getRealPath("/");
			System.out.println(fileToupload);
			
			bean.setFile_real_path(fileToupload);
			System.out.println(fileToupload);
			fileToupload = fileToupload.substring(0, fileToupload.indexOf("."))
					+ "MJNS09_2025\\WebContent\\Filestorage\\";
			if (part.isFile()) {
				filePart = (FilePart) part;
				String fileName = filePart.getFileName();
				fileToupload = fileToupload + fileName;
				File file = new File(fileToupload);

				String absolutepath = file.getAbsolutePath();
				System.out.println(absolutepath + "absolutepath");

				// fileToupload = fileToupload + "\\" +fileName ;
				File uploadedFile = new File(fileToupload);
				double fileSize = filePart.writeTo(uploadedFile);
				bean.setFilename(fileName);
				bean.setFilepath(fileToupload);
				bean.setFileSize1(fileSize);
				System.out.println(" fileSize = " + fileSize);
			} else if (part.isParam()) {
				paramPart = (ParamPart) part;
				String tagName = paramPart.getName();
				System.out.println("tagName = " + tagName);
				String tagValue = paramPart.getStringValue();
				System.out.println("tagValue = " + tagValue);
				ArrayList<String> paramValues = new ArrayList<String>();
				paramValues.add(tagValue);
				System.out.println(paramValues + "arrayvalue");
			}
			HttpSession session = request.getSession();
			session.setAttribute("keyvaluein_session", bean.getKey());
			String username = (String) session.getAttribute("username");
			String fileName = (String) session.getAttribute("fileName");
		
			bean.setUsername(username);
			UploadInterface intrefaces = new UploadValues();
			insert =insert+ intrefaces.uploadFiles(bean);
			System.out.println(insert + "insert");
	
		
		
		System.out.println(bean.getKey() + "keyyy");
		String fullpath=getServletContext().getRealPath("/");
		   int a=fullpath.indexOf('.');
		   String cutpath=fullpath.substring(0, a);
		   String filePath=cutpath+"MJNS09_2025\\WebContent\\CloudDataBase\\metadata\\";
		if (insert > 0) {
			 String path=fileToupload+key+".txt";
	
				
			 File file=new File(path);
			 
						
				
			  FileOutputStream out = new FileOutputStream(cutpath+"MJNS09_2025\\WebContent\\CloudDataBase\\metadata\\"+fileName+".txt");
		         ObjectOutputStream oout = new ObjectOutputStream(out);

				/*PrintWriter printWriter=new PrintWriter(file);*/
				security publickey=new security();
				UploadInterface u = new UploadValues();
				ArrayList list=u.upload(bean);
				Iterator iterator=list.iterator();
				while (iterator.hasNext()) {
					username=iterator.next().toString();
			         oout.writeObject("User Name is "+publickey.encrypt(username)+"\n");
			         fileName=iterator.next().toString();
			         oout.writeObject("File Name is "+publickey.encrypt(fileName)+"\n");
			      //  type=iterator.next().toString();
			      //   oout.writeObject("File Type is "+publickey.encrypt(type)+"\n");
			       //  oout.writeObject("File Size is "+publickey.encrypt( iterator.next().toString()+"")+"\n");
			     //    path=iterator.next().toString();
			     //    oout.writeObject("File Path is "+publickey.encrypt(path+"")+"\n");
			         key=iterator.next().toString();
			         oout.writeObject("Token Name is "+publickey.encrypt(key)+"\n");
			         InputStream i=(InputStream) iterator.next();
			         oout.writeObject("File Content is "+publickey.encrypt(i.toString())+"\n");
				}
		       
		      
		         oout.close();
		        
		         security.main(null);
				}}}
		
				catch (Exception ex) {
			         ex.printStackTrace();
			      }
		
			RequestDispatcher rd = request
					.getRequestDispatcher("UploadSuccess.jsp");
			rd.forward(request, response);
	

	}

}
