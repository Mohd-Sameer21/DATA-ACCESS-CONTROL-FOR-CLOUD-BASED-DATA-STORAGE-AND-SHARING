<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="new.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js1/cufon-yui.js"></script>
<script type="text/javascript" src="js1/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js1/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js1/script.js"></script>
<script type="text/javascript" src="js1/coin-slider.min.js"></script>
<script type="text/javascript" src="js1/cufon-yui.js"></script>
<script type="text/javascript" src="js/downloadsu.js"></script>


<title>Insert title here</title>
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
  <h2>

<center>
  <div class="nav">
   <div class="nav li">
  
          <li><a href="User.jsp">Home</a></li>  
          <li><a href="UserLogout" class="clr">Logout</a></li>
      </div>
      </center>
      <br/>
  <div class="row">

<div class="column">
  
    Our Work<br/><br/>
     
   
      <a href="User.jsp">Upload</a><br/><br/>
      <a href="ViewParticularUserTable">View All Table</a><br/><br/>
      <a href="recFiles.jsp">Files Received</a><br/><br/>
      <a href="requestkey.jsp">Request Key</a><br/><br/>
      <a href="OpenReq.jsp">Open Key Requests</a><br/><br/>
      <a href="OpenRes.jsp">Open Key Responses</a><br/><br/>
     
       <a href=" filedownload.jsp">Download</a><br/><br/>
          
       </div>    

       <center>
 <div class="column1" style="font-size: 25px; color: purple;"> 

<table border="2" align="center">
<tr>
<td>File Name</td>
<td>From</td>
<td>Key</td>
<td>Download File</td>

</tr>
<%
HttpSession httpSession=request.getSession();
String ReciverName=httpSession.getAttribute("username").toString().trim();;
try
{
	
	//System.out.println("ssssssssssssssssssss "+ReciverName);
	Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/MJNS09_2025";
String username="root";
String password="root";
String query="SELECT * FROM sendfiles WHERE ReciverName='"+ReciverName+"';";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr>
    <td><%=rs.getString("filename") %></td>
  <td><%=rs.getString("SenderName") %></td>
  
   <td>******</td>
  <!--  <td><form action="Download" method="post"><input type="button" name="hide" value="Download"></form></td> -->
  <td><a href="<%=rs.getString("filename") %>" class="insideTable" title="Click here to File Decrypt">Download</a><p id="msg_Display"></p></td>
   </tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>
</center>
   </div></div>
</h2>
</body>
</html>