<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.DataBaseConnection.Connections"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>USerFileViewjsp</title>
<link href="new.css" rel="stylesheet" type="text/css" />
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
<script type="text/javascript">
        window.history.forward();
        function noBackk()
        {
            window.history.forward();
        }
</SCRIPT><!-- <BODY onLoad="noBack();" ></body> -->
<form action="OrderStatusChange" method="post" style="width: 1949px; ">
					<table align="left" border="1">
						<tr>
							<td>FILE NAME</td>
							<td>FILE SIZE</td>
							<td>FILE PATH</td>
							<td>KEY</td>
							
						
						</tr>

						<%
										Connection connection;
										boolean i = false;

										connection = Connections.getcon();
										PreparedStatement ps;
										String userview1 = "select * from filea";
										String userview2 = "select * from fileb";
										String userview3 = "select * from filec";
										String userview4 = "select * from filed";

										try {
											ps = connection.prepareStatement(userview1);

											ResultSet rs = ps.executeQuery();

											System.out.println(userview1 + "query1");
											while (rs.next()) {
												String filename = rs.getString(1);
												String filesize = rs.getString(2);
												String filepath = rs.getString(3);
												String key = rs.getString(4);
										
									%>


									<td><%=filename%></td>
									<td><%=filesize%></td>
									<td><%=filepath%></td>
									<td><%=key%></td>

									<td><input type="submit" value="send"></input></td>	
								</tr>
								<%
									}
									} catch (SQLException e) {

										e.printStackTrace();
									}
								%>
							
							</table> 
						</form>
</body>
</html>