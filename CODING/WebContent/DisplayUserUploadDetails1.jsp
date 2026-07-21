<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>DisplayUserUploadDetails.jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
<script>
function confirm() {
	var field=document.getElementById("hide");
	var b=document.getElementById("option");
	b.input=field;
}
</script>
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>

	<div class="main">
		<div class="header_resize">
			<div class="header">
				<div class="logo">
					<img src="images/create_thumb.png" width="233" height="97"
						border="0" alt="" style="width: 220px; height: 81px;" /></a>
				</div>
				<div class="menu">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="#">Services </a></li>
						<li><a href="portfolio.jsp" class="active">Portfolio</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul>
				</div>
				<div class="search">
					<form id="form1" name="form1" method="post" action="#">
						<span> <input name="q" type="text" class="keywords"
							id="textfield" maxlength="50" value="Search..." />
						</span> <input name="b" type="image" src="images/search.gif"
							class="button" />
					</form>
				</div>
				<div class="clr"></div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="header_blog">
			<div class="header_blog_resize">
				<h2>Our Work</h2>
				<div class="menu2">
					<ul>
						<li><a href="#" class="active">All</a></li>
						<li><a href="FolderSize.jsp">Folder Size</a></li>
						<li><a href="GetDataBaseDetails">DataBase Details</a></li>
						<li><a href="TableSize">Storage Capacity</a></li>
					</ul>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
		<div class="clr"></div>
		<div class="body">
			<div class="body_resize">

				<div>
					<form action="DownloadFiles" method="post">


						<table align="center" border="3">
							
							<tr>
								<td>select</td>
								<td>filename</td>
								<td>file size</td>
								<td>file path</td>
								<td>KeyValue</td>
							</tr>
							<td><input type="submit" value="DownloadFiles" /></td>
							<tr>

								<%

	System.out.println("dddduududud");
	ArrayList<String> arrayList=(ArrayList)request.getSession().getAttribute("search");
	System.out.println(arrayList);
	System.out.println("arraylist in jsp"+arrayList.size());
 	Iterator iterator=arrayList.iterator();	
	while(iterator.hasNext()){	
	          	String filename=iterator.next().toString();
				String filesize=iterator.next().toString();
				String filepath=iterator.next().toString();		
				String keyy=iterator.next().toString();	
				
			%><td><input type="radio" name="download" id="option" value="<%=filepath%>"/></td>
								<td><input type="hidden" name="hide" value="<%=filepath%>" id="hide"></input></td>	
	<%-- <input type="hidden" name="hideen" value="<%=filename%>">	  --%>   	

										<td><%=filename %></td>
										<td><%=filesize %></td>
										<td><%=filepath %></td>
										<td><%=keyy %></td><br></br>
								
							</tr> <%} %>
								
							
						</table>
					</form>
				</div>
				<div class="right_port">
					<h2>Portfolio Item</h2>
					<img src="images/port_2.jpg" alt="" width="292" height="101" />
					<p>Scalable datastores (or simply datastores) are distributed
						storage systems that scale to thousands of commodity servers and
						manage petabytes of structured data.</p>
					<p>
						<a href="#">View Site »</a>
					</p>
				</div>
				<div class="right_port">
					<h2>Portfolio Item</h2>
					<img src="images/port_3.jpg" alt="" width="292" height="101" />
					<p>Today, they are routinely used by online serving, analytics
						and bulk processing applications, such as web indexing, social
						media, electronic commerce, and scientific analysis</p>
					<p>
						<a href="#">View Site »</a>
					</p>
				</div>
				<div class="right_port">
					<h2>Portfolio Item</h2>
					<img src="images/port_4.jpg" alt="" width="292" height="101" />
					<p>Scalable datastores are distributed storage systems capable
						of managing enormous amounts of structured data for online serving
						and analytics applications.</p>
					<p>
						<a href="#">View Site »</a>
					</p>
				</div>
				<!--  <div class="right_port">
        <h2>Portfolio Item<img src="images/port_5.jpg" alt="" width="292" height="101" /><p> Across different workloads, they weaken the relational and transactional assumptions of traditional
databases to achieve horizontal scalability and availability, and meet demanding throughput and latency requirements.</p></h2>
        
        
        <p><a href="#">View Site »</a></p>
      </div> -->
				<!-- <img src="images/port_6.jpg" alt="" width="292" height="101" /><p>Scalable datastores are distributed storage systems capable of managing enormous amounts of structured data for online
serving and analytics applications.</p>
      <div class="right_port">
        <h2>Portfolio Item</h2>
        
        
        <p><a href="#">View Site »</a></p>
      </div> -->
				<div class="clr"></div>
			</div>
		</div>
		<div class="clr"></div>

		<div class="clr"></div>

	</div>
</body>
</html>
