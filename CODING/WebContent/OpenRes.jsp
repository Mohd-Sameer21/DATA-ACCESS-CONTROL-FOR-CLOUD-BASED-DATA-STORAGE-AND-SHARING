<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="new.css" rel="stylesheet" type="text/css" />
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
          
       </div>    

       <center>
 <div class="column1"> 

<table border="2" align="center">
<tr style="font-size: 25px; color: purple;">
<td>From</td>
<td>File Name</td>
<td>key</td>


</tr>
<%
HttpSession httpSession=request.getSession();
String to=httpSession.getAttribute("username").toString().trim();;
try
{
	
	//System.out.println("ssssssssssssssssssss "+to);
	Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/MJNS09_2025";
String username="root";
String password="root";
String query="SELECT * FROM keyinsert WHERE recipient='"+to+"';";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getString("fileOwner") %></td>
  <td><%=rs.getString("fileName") %></td>
  <td><%=rs.getString("key") %></td> </tr>
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