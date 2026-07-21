<!DOCTYPE html 5>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FolderSize</title>
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
							<details>
					<summary>Click to See the File Size</summary>
					<br>

					<%
						HttpSession httpSession = request.getSession();
						String s = httpSession.getAttribute("foldersize").toString().trim();
						String foldersize_in_MB = httpSession.getAttribute("sizeinMB")
								.toString().trim();
					%>
					<form action="AdminLogin" method="post">
						<table border="1">
							<Tr>
								<td style="font-size: 25px; color: purple;">Size in byte</td>


								<td>
									<%
										out.print(s);
									%><br>
								</td>
							</tr>
							<tr>
								<td style="font-size: 25px; color: purple;">Size in M.B</td>

								<td>
									<%
										out.print(foldersize_in_MB);
									%>
								</td>
							</tr>
						</table>
					</form>
				</details><br/><br/>
				
		 </center>
   </div></div>
</h2>
				
</body>
</html>
