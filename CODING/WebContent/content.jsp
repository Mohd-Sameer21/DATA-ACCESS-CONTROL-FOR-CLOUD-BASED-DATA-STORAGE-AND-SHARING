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
<head>
<title>check.jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/formSubmit.js"></script>
</head>

<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/>
<h2>
<center>
  <div class="nav">
   <div class="nav li">
   
    <li><a href="Admin.jsp">Home</a></li>  
   <li><a href="search.jsp">Search</a></li> 
	<li><a href="FolderSize.jsp">Folder Size</a></li> 
	<li><a href="GetDataBaseDetails">DataBase Details</a></li> 
	<li><a href="TableSize">Storage Capacity</a></li> 
            
      </div>
     </div>
     </center></h2>
      <br/>
	
	<table border="1" align="center" bgcolor="#adf156">
			<tr>
				
				<td>Select the table name to move</td>
							<td><select id="to">
						<option value="">To Table</option>
						<option value="filea">Storage-1</option>
						<option value="fileb">Storage-2</option>
						<option value="filec">Storage-3</option>
						<option value="filed">Storage-4</option>
				</select></td>
			</tr>
		</table>
		
		<br> <br> <br>
		<%	ArrayList al=new ArrayList();
				al.add("filea");
				al.add("fileb");
				al.add("filec");
				al.add("filed");
int tableCount=0,i=1;
String nam="",clr="#1DDAE2";
	System.out.println("from check.jsp");
ArrayList[] arrayList=(ArrayList[])request.getSession().getAttribute("arraylist");
	System.out.println(arrayList);
	for(ArrayList list:arrayList){
	System.out.println("al.get(tableCount) = "+al.get(tableCount));
	if(i==1)
	{
		nam="SERVER";
		clr="#1DDAE2";
	}
	if(i==2)
	{
		nam="Docx Files";
		clr="#8B1DE2";
	}
	if(i==3)
	{
		nam="txt Files";
		clr="#1DE25B";
	}
	if(i==4)
	{
		nam="Jpg Files";
		clr="#BFE21D";
	}
	%>
		<table border="1" align="center" bgcolor="<%=clr %>">
			<tr>

				<td>filename</td>
				<td>filesize</td>
				<td>filepath</td>
				<td>key</td>
				<td>User</td>
				<td>Select</td>
				<h3><center><%=nam %></center></h3>
			</tr>
			<%Iterator iterator1=list.iterator(); 
 	while(iterator1.hasNext()){
			   	String filename=iterator1.next().toString();
				String filesize=iterator1.next().toString();
				String filepath=iterator1.next().toString();
				String key=iterator1.next().toString();
				String user=iterator1.next().toString();
			/* 	String path=iterator.next().toString();
				String href="Pageview?path="+path; */			
			%>
			<tr id="tr">
				<td><%=filename %></td>
				<td><%=filesize %></td>
				<td><%=filepath %></td>
				<td><%=key %></td>
				<td><%=user %></td>
				<td><input type="radio" name="download" id="datafile"
					value="<%="?filename"+filename+"&filesize="+filesize+"&filename="+filename+"&filepath="+filepath+"&key="+key+"&user="+user+"&tname="+al.get(tableCount).toString()%>"></td>

			</tr>
			<%}%>
		</table>
		<br></br>
		<%tableCount++;	i++;}%>
		
	

		 </center>
</body>