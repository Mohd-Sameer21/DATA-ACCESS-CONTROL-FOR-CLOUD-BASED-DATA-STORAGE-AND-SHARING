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
<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="new.css" rel="stylesheet" type="text/css" />
<%
HttpSession httpSession=request.getSession();
String username=httpSession.getAttribute("username").toString().trim();;

%>
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/>

<center>

<form action="SendFile" method="post">
File Name : <input type="text" name="filename"/>
<%
    try{

    	Connection con = Connections.getcon();
		Statement statement = con.createStatement();

       resultset =statement.executeQuery("select * from MJNS09_2025.register") ;
%>

<center>
<h3>Choose Receiver User Name :</h3>  

  <select>
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
        <% } %>
        </select>
</center>

<%

        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

<br/><br/>
<input type="submit" value="submit">
</form> 

</center>

</body>
</html>