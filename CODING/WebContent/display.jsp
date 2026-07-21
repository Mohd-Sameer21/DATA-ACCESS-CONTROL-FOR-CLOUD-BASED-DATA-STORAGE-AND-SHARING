<%@page import="java.util.ArrayList"%>
<%@page import="com.Implementation.Implementation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="new.css" rel="stylesheet" type="text/css" />
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/>

<%Implementation ii=new Implementation();

%>
<input type="hidden" value="<%=ii.getKeysCount(request.getParameter("table"), request.getParameter("key"))%>" id="keyCount">
<%
ArrayList<String> al=ii.getKeysPath(request.getParameter("table"), request.getParameter("key"));
for(int i=0;i<al.size();i++){%>
<input type="text" value="<%=al.get(i)%>" id="<%=i%>">
<%} %>
<button id="download">Submit</button>
</body>
</html>