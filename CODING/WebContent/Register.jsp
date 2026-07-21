<!DOCTYPE html 5.0>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />

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
   <div class="column1">

   
			<h2 align="center">Register for new user</h2>
									<script>
		function validateForm() {
			var x = document.forms["myForm"]["name"].value;
			if (x == null || x == "") {
				alert("Please type your username");
				return false;
			}
			var x1 = document.forms["myForm"]["password"].value;
			if (x1 == null || x1 == "") {
				alert("Please fill the password field");
				return false;
			}

			var x2 = document.forms["myForm"]["RPassword"].value;
			if (x2 == null || x2 == "") {
				alert("Please type your password");
				return false;
			}
			if (x1 != x2) {
				alert("Password Mismarch");
				return false;
			}		
						
			var x = document.forms["myForm"]["address"].value;
			if (x == null || x == "") {
				alert("Please type your address");
				return false;
			}
			var x = document.forms["myForm"]["number"].value;
			if (x == null || x == "") {
				alert("Please type your phoneNumber");
				return false;
			}
			var x = document.forms["myForm"]["mail"].value;
			if (x == null || x == "") {
				alert("Please type your E-MailID");
				return false;
			}

		}
	</script>
	
	<script>
		function form1() {
			var x1 = document.forms["myForm"]["password"].value;
			var x2 = document.forms["myForm"]["RPassword"].value;
		
			if (x1 != x2) {
				alert("Password Mismarch");
				return false;
			}
			return true;
		}
	</script>
	

					<form name="myForm" action=" Register" method="post" onsubmit="return form1()">
						<table align="center" style="font-size: 20px; color: purple;">
							<Tr>
								<Td>User Name:</Td>
								<td><input type="text" name="name" required="required"></input></td>
							</Tr>
							<Tr>
								<Td>Password</Td>
								<td><input type="password" name="password" required="required" pattern=".{6,}" title="Enter minimum 6 characters"></input></td>
							</Tr>
							<Tr>
								<Td>ReType Password</Td>
								<td><input type="password" name="RPassword" required="required" ></input></td>
							</Tr>
							<Tr>
								<Td>Gender</Td>
								<td><input type="radio" name="Gender" value="male" required="required">Male</input>
								
									<input type="radio" name="Gender" value="female">Female</input></td>
							</Tr>
							<Tr>
								<Td>DOB</Td>
								<td><input type="date" name="dat" required="required"></input>
									
							</Tr>
							<Tr>
								<Td>Nationality</Td>
								<td><input type="text" name="nation" required="required"></input>
									
							</Tr>
							<Tr>
								<Td>EMail ID</Td>
								<td><input type="email" name="mail" required="required"></input></td>
							</Tr>
							<Tr>
								<Td>Mobile Number</Td>
								<td><input type="text" name="number" required="required" pattern="[0-9].{9,9}" title="Enter 10 No's"></input></td>
							</Tr>
							<tr>
								<td>Address</td>
								<td><Textarea rows="4" cols="20" name="address" required="required"></Textarea></td>
							</tr>

							<Tr>
								<td><input type="submit" name="sumbit" value="Register" style="font-size: 20px; color: blue;"></input></td>
							</Tr>

						</table>
					</form>
					
					</div></div></h1>
				
</body>
</html>
