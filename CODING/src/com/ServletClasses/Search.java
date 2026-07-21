package com.ServletClasses;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.BeanClasses.UploadBean;
import com.Implementation.Implementation;
import com.interfaces.InterfaceMethods;

@WebServlet("/Search")


public class Search extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String FILE_SEPARATOR = System.getProperty("file.separator");
	public String path="";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //
            // The path below is the root directory of data to be
            // compressed.
            //
            //String path = getServletContext().getRealPath(new File(request.getParameter("")).g);
        	path=request.getRealPath("/");
        	path=path.substring(0,path.indexOf("."));
        	UploadBean bean = new UploadBean();
    		String getkey = request.getParameter("search");
        	InterfaceMethods methods = new Implementation();
        	HttpSession httpSession = request.getSession();
			httpSession.setAttribute("keyy", getkey);
			String keyy = httpSession.getAttribute("keyy").toString().trim();
			ArrayList<String> i = methods.userSearch(bean, keyy);
			String fil=i.get(0);
			String loc=i.get(1);
			System.out.println("file:"+fil+"\n location:"+loc);
			if(fil.endsWith(".pdf")&&loc.equalsIgnoreCase("filea"))
			{
				Object[] files = i.toArray();
            if (files != null && files.length > 0) {
            	
            	/**
            	byte[] zip = zipFiles(files);
                ServletOutputStream sos = response.getOutputStream();
                response.setContentType("application/zip");
                response.setHeader("Content-Disposition", "attachment; filename=DATA.ZIP");
                sos.write(zip);
                sos.flush();
                */
            	 HttpSession session=request.getSession();
    			 session.setAttribute("folder", fil);
            	response.sendRedirect("filedownload.jsp?status=true");
            }
			}else if(fil.endsWith(".docx")&&loc.equalsIgnoreCase("fileb"))
            {
				Object[] files = i.toArray();
	            if (files != null && files.length > 0) {/**
	            	byte[] zip = zipFiles(files);
	                ServletOutputStream sos = response.getOutputStream();
	                response.setContentType("application/zip");
	                response.setHeader("Content-Disposition", "attachment; filename=DATA.ZIP");
	                sos.write(zip);
	                sos.flush();	 */
	            	
	            	 HttpSession session=request.getSession();
	    			 session.setAttribute("folder", fil);
	            	response.sendRedirect("filedownload.jsp?status=true");
	            	
	            	
	            	
            }}else if(fil.endsWith(".jpg")&&loc.equalsIgnoreCase("filec"))
            {
            	Object[] files = i.toArray();
                if (files != null && files.length > 0) {/**
                	byte[] zip = zipFiles(files);
                    ServletOutputStream sos = response.getOutputStream();
                    response.setContentType("application/zip");
                    response.setHeader("Content-Disposition", "attachment; filename=DATA.ZIP");
                    sos.write(zip);
                    sos.flush(); */
                	 HttpSession session=request.getSession();
	    			 session.setAttribute("folder", fil);
	            	response.sendRedirect("filedownload.jsp?status=true");
            }}else if(fil.endsWith(".txt")&&loc.equalsIgnoreCase("filed"))
            {
            	Object[] files = i.toArray();
                if (files != null && files.length > 0) {/**
                	byte[] zip = zipFiles(files);
                    ServletOutputStream sos = response.getOutputStream();
                    response.setContentType("application/zip");
                    response.setHeader("Content-Disposition", "attachment; filename=DATA.ZIP");
                    sos.write(zip);
                    sos.flush(); */	
                	 HttpSession session=request.getSession();
	    			 session.setAttribute("folder", fil);
	            	response.sendRedirect("filedownload.jsp?status=true");
                }}else
            {
                	
                	
                	response.sendRedirect("filedownload.jsp?status=false");
            }
            
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Compress the given directory with all its files.
     */
    private byte[] zipFiles(Object[] files) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ZipOutputStream zos = new ZipOutputStream(baos);
        byte bytes[] = new byte[2048];
        for (Object fileName : files) {
        	
            FileInputStream fis = new FileInputStream(path+"MJNS09_2025\\WebContent\\Filestorage\\"+fileName.toString());
            System.out.println(path+"-----------");
            System.out.println(fileName+"-"+path+"MJNS09_2025\\WebContent\\Filestorage\\"+fileName.toString());
            BufferedInputStream bis = new BufferedInputStream(fis);
            ZipEntry  z=new ZipEntry(fileName.toString());
            zos.putNextEntry(z);

            int bytesRead;
            while ((bytesRead = bis.read(bytes)) != -1) {
                zos.write(bytes, 0, bytesRead);
            }
            zos.closeEntry();
            bis.close();
            fis.close();
        }
        zos.flush();
        baos.flush();
        zos.close();
        baos.close();

        return baos.toByteArray();
    }
}
/*public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Search() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UploadBean bean = new UploadBean();
		String getkey = request.getParameter("search");
		boolean ischeckcomma = getkey.contains(",");

		if (ischeckcomma) {
			System.out.println("contains comma" + ischeckcomma);
			List<String> al = Arrays.asList(getkey.split(","));
			System.out.println(" al = " + al);
			bean.setUserkey(getkey);
			System.out.println(getkey + "vvvvvvvvvvaaaaaaalue");
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("keyy", getkey);
			String keyy = httpSession.getAttribute("keyy").toString().trim();
			System.out.println(keyy + "======================");
			InterfaceMethods methods = new Implementation();
			ArrayList<String> i = methods.userSearch(bean, keyy,al);
			System.out.println(i.size() + "==sssss");
			httpSession.setAttribute("search", i);
			System.out.println(i);
			response.sendRedirect("DisplayUserUploadDetails.jsp");

		} else {
			System.out.println("contains no comma" + ischeckcomma);
			bean.setUserkey(getkey);
			List<String> al = Arrays.asList(getkey.split(","));
			System.out.println(getkey + "vvvvvvvvvvaaaaaaalue");
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("keyy", getkey);
			String keyy = httpSession.getAttribute("keyy").toString().trim();
			System.out.println(keyy + "======================");
			InterfaceMethods methods = new Implementation();
			ArrayList<String> i = methods.userSearch(bean, keyy,al);
			System.out.println(i.size() + "==sssss");
			httpSession.setAttribute("search", i);
			System.out.println(i);
			response.sendRedirect("DisplayUserUploadDetails.jsp");
		}
	}

}
*/