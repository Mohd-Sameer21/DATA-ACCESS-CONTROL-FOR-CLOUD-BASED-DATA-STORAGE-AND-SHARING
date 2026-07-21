package com.ServletClasses;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClasses.UploadBean;

@WebServlet("/DownloadFiles")
public class DownloadFiles extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UploadBean bean = new UploadBean();

	public DownloadFiles() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String filed=request.getParameter("hide");
		System.out.println("filename in download @#$ "+filed);
		
		String filedownload=getServletContext().getRealPath("/");
		filedownload=filedownload.substring(0,filedownload.indexOf("."));
		System.out.println("filedwnload="+filedownload);
		String radio= request.getParameter("download");
		System.out.println("radioButtonValues="+radio);
        String filePath = radio;
        System.out.println("filePath="+filePath);
//        System.out.println(ob+"objrectvale");
        File File = new File(filePath);
        FileInputStream inStream = new FileInputStream(File);
         
        // if you want to use a relative path to context root:
       /* String relativePath = getServletContext().getRealPath("");
        System.out.println("relativePath = " + relativePath);
       */  
        // obtains ServletContext
        ServletContext context = getServletContext();
         
        // gets MIME type of the file
        String mimeType = context.getMimeType(filePath);
        if (mimeType == null) {        
            // set to binary type if MIME mapping not found
            mimeType = "application/octet-stream";
        }
        System.out.println("MIME type: " + mimeType);
         
        // modifies response
        response.setContentType(mimeType);
        response.setContentLength((int) File.length());
         
        // forces 
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", File.getName());
        response.setHeader(headerKey, headerValue);
         
        // obtains response's output stream
        OutputStream outStream = response.getOutputStream();
         
        byte[] buffer = new byte[20971520];
        int bytesRead = -1;
         
        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
         
        inStream.close();
        outStream.close(); 
	}
}
