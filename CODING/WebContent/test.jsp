<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DataBaseConnection.Connections"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>testjsp</title>
<link href="new.css" rel="stylesheet" type="text/css" />
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/>

<%	
	System.out.println("from databasedetails.jsp");
ArrayList[] arrayList=(ArrayList[])request.getSession().getAttribute("arraylist");
	System.out.println(arrayList);
	for(ArrayList list:arrayList){%>
	<table>
	<tr>
							<td>filename</td>
							<td>filesize</td>
							<td>filepath</td>
							<td>key</td></tr>
 	<%Iterator iterator1=list.iterator(); 
 	while(iterator1.hasNext()){
			   	String filename=iterator1.next().toString();
				String filesize=iterator1.next().toString();
				String filepath=iterator1.next().toString();
				String key=iterator1.next().toString();
			/* 	String path=iterator.next().toString();
				String href="Pageview?path="+path; */			
			%>
						<tr>
							<td><%=filename %></td>
							<td><%=filesize %></td>
							<td><%=filepath %></td>
							<td><%=key %></td></tr>
							<%}%>
 	</table>
 	<br></br>
 	 	<br></br>
 	 	<br></br>
 	
<%	}%>
						
					
					
					
				
</body>
</html>