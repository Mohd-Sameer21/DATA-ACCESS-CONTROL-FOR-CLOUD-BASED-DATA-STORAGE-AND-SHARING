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
<head>
<title>ViewUserValueTablejsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
<!-- <script type="text/javascript" src="script/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="jquery/formSubmit.js"></script>-->
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
 
<center>
  <div class="nav">
   <div class="nav li">
		   <li><a href="User.jsp">Home</a></li>    
          <li><a href="contact.jsp">Contact Us</a></li>
          <li><a href="UserLogout" class="clr">Logout</a></li>
				</div></center>
				<br/>
	<div class="row">
	<div class="column">
  <h2>
    Our Work<br/><br/>
     
   
      <a href="User.jsp">Upload</a><br/><br/>
      <a href="ViewParticularUserTable">View All Table</a><br/><br/>
      <a href="recFiles.jsp">Files Received</a><br/><br/>
      <a href="requestkey.jsp">Request Key</a><br/><br/>
      <a href="OpenReq.jsp">Open Key Requests</a><br/><br/>
      <a href="OpenRes.jsp">Open Key Responses</a><br/><br/>
          
       </div>  
         </h2>
<center>
<div class="column1">
      
<%
HttpSession httpSession=request.getSession();
String username=httpSession.getAttribute("username").toString().trim();;
%>
	<h2><b><u><%=username %></u></b></h2>
		<table border="2" align="center" bgcolor="#abf654">
		<th colspan="6" style="font-size: 20px; color: purple;">UPLOADED FILES</th>
			<tr>

				<td style="font-size: 15px; color: red;">File Name</td>
				<td style="font-size: 15px; color: red;">File Size</td>
				<td style="font-size: 15px; color: red;">File Path</td>
				<td style="font-size: 15px; color: red;">key</td>
				<td style="font-size: 15px; color: red;">Select User</td>
				<td style="font-size: 15px; color: red;">Send File</td>
					
			</tr>
		<%	ArrayList al=new ArrayList();
				al.add("filea");
				al.add("fileb");
				al.add("filec");
				al.add("filed");
int tableCount=0,i=1;
	//System.out.println("from DataBaseDetails.jsp");
ArrayList[] arrayList=(ArrayList[])request.getSession().getAttribute("arraylist");
	//System.out.println(arrayList);
	
	for(ArrayList list:arrayList){
	//System.out.println("al.get(tableCount) = "+al.get(tableCount));
	
	%>
		
			<%Iterator iterator1=list.iterator(); 
 	while(iterator1.hasNext()){
			   	String filename=iterator1.next().toString();
				String filesize=iterator1.next().toString();
				String filepath=iterator1.next().toString();
				String key=iterator1.next().toString();
						
			/* 	String path=iterator.next().toString();
				String href="Pageview?path="+path; */			
			%>
		
			<tr id="tr">
				<td><%=filename %></td>
				<td><%=filesize %></td>
				<td><%=filepath %></td>
				<td><%=key %></td>
				<td><form action="<%="SendFile?filename"+filename+"&filename="+filename+"&filepath="+filepath+"&key="+key+"&username="+username+"&username="%>"" method="post">
				<%
				
		try{
    	Connection con = Connections.getcon();
		Statement statement = con.createStatement();

       resultset =statement.executeQuery("select * from MJNS09_2025.register") ;
%>
<center>
  <select name="ReciverName">
  	<option value="">Select</option>
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
			</td>	
			<td><input type="submit" value="Send File"></input></form></td>
			</tr>
			<%}%>		
		<br></br>
		<%tableCount++;
		i++;}%>
		
		<!--<form action="check.jsp" method="post" id="myForm">	
			<input type="submit" value="changeTheFile">
			</form>-->

</table>
</div></div></center>

</body>
</html>