<!DOCTYPE html 5.0>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Portfolio</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">
  <div class="header_resize">
    <div class="header">
      <div class="logo"><img src="images/create_thumb.png" width="233" height="97" border="0" alt="" style="width: 220px; height: 81px; "/></a></div>
      <div class="menu">
      <ul>
          <li><a href="index.jsp">Home</a></li>
         <li><a href="Login.jsp">User</a></li>
           <li><a href="portfolio.jsp">Admin</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
      </div>
      <div class="search">
        <form id="form1" name="form1" method="post" action="#">
          <span>
          <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
          </span>
          <input name="b" type="image" src="images/search.gif" class="button" />
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
      
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
  <div class="body">
    <div class="body_resize">
     <div align="center">
             
             
             
             	
						<% if(request.getParameter("status")!=null){
				if(request.getParameter("status").equals("false")){
				%>
						<font color="red" size="4">Access Denied ..!!,it needs place in correct server..!!</font>
				
				<%}if(request.getParameter("status").equals("true")){
					String path="D:\\2021 Major Work Space\\MJNS09_2025\\WebContent\\Filestorage\\";
					String fil=(String)session.getAttribute("folder");
					%>
					
						<font color="green" size="4">Download..</font><br>
						
						<a href="Download?selectedname=<%=path+fil%>"style="color: olive;" ><%=fil%></a>
						<%}}
				%>
        
        
        
        
        
        </div>
      <div class="right_port">
        <h2>Portfolio Item</h2>
        <img src="images/port_1.jpg" alt="" width="292" height="101" />
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five </p>
        <p><a href="#">View Site »</a></p>
      </div >
     
      <div class="right_port">
        <h2>Portfolio Item</h2>
        <img src="images/port_2.jpg" alt="" width="292" height="101" />
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five </p>
        <p><a href="#">View Site »</a></p>
      </div>
      <div class="right_port">
        <h2>Portfolio Item</h2>
        <img src="images/port_3.jpg" alt="" width="292" height="101" />
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five </p>
        <p><a href="#">View Site »</a></p>
      </div>
      <div class="right_port">
        <h2>Portfolio Item</h2>
        <img src="images/port_4.jpg" alt="" width="292" height="101" />
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five </p>
        <p><a href="#">View Site »</a></p>
      </div>
      <div class="right_port">
        <h2>Portfolio Item</h2>
        <img src="images/port_5.jpg" alt="" width="292" height="101" />
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five </p>
        <p><a href="#">View Site »</a></p>
      </div>
      <div class="right_port">
        <h2>Portfolio Item</h2>
        <img src="images/port_6.jpg" alt="" width="292" height="101" />
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five </p>
        <p><a href="#">View Site »</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  
  <div class="clr"></div>
  
</div>
</body>
</html>
