<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="com.DataBaseConnection.Connections"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%if((request.getParameter("tname")!="")&&(request.getParameter("tname")!=null)){%>
<table style="color:blue;font-size:18px;" border="1">
<tr style="color:purple;font-size:25px;"><td>FileName</td><td>Size</td><td>Key</td></tr>
<%Connection connection=(Connection) Connections.getcon(); 

String tnm=(String)request.getParameter("tname"),tabl=".pdf";
/**
if(tnm.equalsIgnoreCase(".pdf"))
{
	tabl="filea";
	System.out.println("table:"+tabl+"\n type:"+tnm);
}
if(tnm.equalsIgnoreCase(".docx"))
{
	tabl="fileb";
	System.out.println("table:"+tabl+"\n type:"+tnm);
}
if(tnm.equalsIgnoreCase(".jpg"))
{
	tabl="filec";
	System.out.println("table:"+tabl+"\n type:"+tnm);
}
if(tnm.equalsIgnoreCase(".txt"))
{
	tabl="filed";
	System.out.println("table:"+tabl+"\n type:"+tnm);
} */
for(int j=1;j<=4;j++)
{
	if(j==1)
	{
	tabl="filea";
	}
	if(j==2)
	{
	tabl="fileb";
	}
	if(j==3)
	{
	tabl="filec";
	}
	if(j==4)
	{
	tabl="filed";
	}
PreparedStatement statement=connection.prepareStatement("Select * from "+tabl+" where filepath like '%"+tnm+"'");
ResultSet set=statement.executeQuery();
while(set.next()){
	//System.out.println("Select * from "+request.getParameter("tname"));

String comment=set.getString(1).toString();	
String Rate=set.getString(2).toString();

String sno=set.getString(4).toString();


%>
<tr><td><%=comment%></td><td><%=Rate%></td><td><%=sno%></td></tr>
<%}
}



}else{%>
<h1><%out.println("NO RESULT");%></h1>	
	
<%}%>


 </table>
</body>
</html>