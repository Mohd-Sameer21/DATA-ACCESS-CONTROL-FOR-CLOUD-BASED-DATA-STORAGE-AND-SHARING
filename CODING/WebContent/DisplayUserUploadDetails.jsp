<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>DisplayUseruploadDetailsjsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/formSubmit.js"></script>
<script type="text/javascript">

</script>
</head>

<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>

<div class="main">
  <div class="header_resize">
    <div class="header">
      <div class="logo"><img src="images/create_thumb.png" width="233" height="97" border="0" alt="" style="width: 220px; height: 81px; "/></a></div>
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
      <%ArrayList<String> path=(ArrayList<String>)request.getSession().getAttribute("search");
      for(int i=0;i<path.size();i++){
      %>
      <form action="DownloadFile" method="post" id="<%=i%>">
      <input type="hidden" value="<%=path.get(i).toString()%>"  name="hide"/>
      </form>
      
      <%}%>
      <button id="Click" class="<%=path.size()%>">Download</button>
       <form id="form1" name="form1" method="post" action="Search">
          <span>
          <input type="search" name="search"/>
         <!--  <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="" /> -->
          </span>
          <input name="b" type="image" src="images/search.gif" class="submit" />
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
						<li><a href="#">Folder Size</a></li>
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


<%-- <form action="DownloadFile" method="post">
	<table align="center" border="3">  	<td><input type="submit" value="DOWNLOAD"></td>
    	<tr> <td>select</td> <td>filename</td><td>file size</td><td>file path</td><td>KeyValue</td></tr>
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
				
			%>
			<tr>
	<input type="hidden" name="hide" value="<%=filepath%>">	
	<input type="hidden" name="hideen" value="<%=filename%>">	    	
  	<td><input type="checkbox" name="download" id="datafile"></td>

 <td><%=filename %></td>
<td><%=filesize %></td>
<td><%=filepath %></td>
<td><%=keyy %></td>
</tr>
<%} %> 
    	
    	</table> 
 </form>

<select id="table">
<option id="filea">filea</option>
<option id="fileb">fileb</option>
<option id="filec">filec</option>
<option id="filed">filed</option>
</select>
<p id="display"/>
	
        </div> --%>
   
   
  
</div>
</body>
</html>
