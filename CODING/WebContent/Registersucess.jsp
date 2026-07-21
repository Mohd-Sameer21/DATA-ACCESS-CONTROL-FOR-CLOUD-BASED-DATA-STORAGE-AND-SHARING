<!DOCTYPE html 5.0>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registersucess.jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#slideshow').cycle({
        fx:     'fade',
        speed:  'slow',
        timeout: 5000,
        pager:  '#slider_nav',
        pagerAnchorBuilder: function(idx, slide) {
            // return sel string for existing anchor
            return '#slider_nav li:eq(' + (idx) + ') a';
        }
    });
});
</script>

</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
<h1>
<div class="row">

<div class="column">
          <a href="index.jsp" class="active">Home</a><br/><br/>
          <a href="Login.jsp" >Login</a><br/><br/>
         <a href="portfolio.jsp">Admin</a><br/><br/>
          <!-- <a href="contact.jsp">Contact Us</a><br/><br/> -->
        </div>
        <br/><br/><br/>
   <div class="column1">
   
   

    <U>YOU HAVE SUCCESSFULLY REGISTERED PLEASE LOGIN AND ACCESS</U> 
      </div></div></h1>
</body>
</html>
