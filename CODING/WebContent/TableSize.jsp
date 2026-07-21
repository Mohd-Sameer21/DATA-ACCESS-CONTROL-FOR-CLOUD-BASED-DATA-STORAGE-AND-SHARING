<!DOCTYPE html 5>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="com.DataBaseConnection.Connections"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>TableSize</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
</head>

<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
<h2>
<center>
  <div class="nav">
   <div class="nav li">
  
          <li><a href="Admin.jsp">Home</a></li>  
          <li><a href="contact.jsp">Contact Us</a></li>
          <li><a href="index.jsp" class="clr">Logout</a></li>
      </div>
     </div>
     </center>
      <br/>
  <div class="row">

<div class="column2">
       
   
   	<a href="search.jsp">Search</a><br/><br/>
	<a href="FolderSize.jsp">Folder Size</a><br/><br/>
	<a href="GetDataBaseDetails">DataBase Details</a><br/><br/>
	<a href="TableSize">Storage Capacity</a>
              
       </div>     
   
<div class="column1"> 
<center>
      
<table  border="2">
<tr style="color: red;font-size: 20px;"><td>TableName</td><td>Table Total size</td></tr>
<%
HttpSession httpSession=request.getSession();
HashMap<String, Double> i =(HashMap<String, Double>) session.getAttribute("i");
Set set=i.entrySet();
Iterator iterator=set.iterator();
while(iterator.hasNext()){
	Object object=iterator.next();
	Map.Entry<String,Double> m=(Map.Entry<String,Double>)object;
	String tableName=m.getKey();
	Double size=m.getValue();
%>
<tr><td><%=tableName=tableName.substring(tableName.lastIndexOf(".")+1,tableName.length())%></td><td><%=size%></td></tr>
<tr><td>
<%-- <meter value="<%=size%>" max="999999"></meter> --%>
</td>
<td>
<progress value="<%=size%>" max="2048576"></progress>
</td></tr>
<%} %>

</table>

			 </center>
   </div></div>
</h2>
</body>
</html>
