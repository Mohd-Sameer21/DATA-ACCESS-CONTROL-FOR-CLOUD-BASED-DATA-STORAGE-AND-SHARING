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

<select id="key">
<%Implementation i=new Implementation();
for(String key:i.getKeys(request.getParameter("table"))){
%>
<option value="<%=key%>"><%=key%></option>
<%} %>
</select><br>
<button id="button">Submit</button>
</body>
</html>