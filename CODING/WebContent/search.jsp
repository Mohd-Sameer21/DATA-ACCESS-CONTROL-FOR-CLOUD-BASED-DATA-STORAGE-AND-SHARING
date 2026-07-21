<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.BeanClasses.UploadBean"%>
<%@page import="java.util.Random"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>userjsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
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
      </center>
      <br/>
  <div class="row">

<div class="column2">
  
    <a href="search.jsp">Search</a><br/><br/>
	<a href="FolderSize.jsp">Folder Size</a><br/><br/>
	<a href="GetDataBaseDetails">DataBase Details</a><br/><br/>
	<a href="TableSize">Storage Capacity</a>
              
     
   
          
       </div>    

       <center>
 <div class="column1"> 



              		<script>
			function validateForm() {
				var x = document.forms["myForm"]["file"].value;
				if (x == null || x == "") {
					alert("Please Choose any file");
					return false;
				}
			}
		</script>
		<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var k=document.getElementById("id2").value;
var urls="list.jsp?tname="+k;

if (window.XMLHttpRequest)
{xmlhttp=new XMLHttpRequest();
 }
else
{
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{ if (xmlhttp.readyState==4)
{//document.getElementById("err").style.color="red";
//alert("");
document.getElementById("err").innerHTML=xmlhttp.responseText;

}
}
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>
		
 <form action="#" name="">
<h3>Choose Type :</h3><select name="table" id="id2" onchange="loadXMLDoc()">
<option value=""></option>
<option value=".pdf">Pdf</option>
<option value=".docx">Docx</option>
<option value=".jpg">Jpg</option>
<option value=".txt">Txt</option>
</select>

<br/>
<br/>
<br/>

 <span id="err"></span>
</form>
      
      
</center>   </div></div>
</h2>
</div>
</body>
</html>
