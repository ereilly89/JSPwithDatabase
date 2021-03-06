<!DOCTYPE html>
<html>

  <head>
   <%@ page import = "dbconnection.main" %>
   <%@ page import = "java.util.*"%>
   <title>UWW CS Alumni - Employers</title>
   <link rel="stylesheet" href="../css/css1.css">
   <meta charset="utf-8">
   <meta name="description" content="Employer information from University of Wisconsin - Whitewater computer science graduates.">
   <meta name="keywords" content="alumni, uww, cs, employers">
   <link id="icon" href="images/web.ico"> 
   
    <style>
    
    ul {
  		list-style-type: none;
 		margin: 16px;
 		padding: 0;
  		overflow: hidden;
  		background-color: #502D7F;
  		float: none;
 		position: absolute;
  		left: 50%;
 		transform: translate(-50%, -50%);
 		white-space: nowrap;
 		border-radius: 12px;
	}

	ul input[type=text] {
		float: right;
  		padding: 6px;
  		padding-top: 8px;
  		padding-bottom: 6px;
 		border: none;
  		margin-top: 8px;
 		margin-right: 16px;
	}

	li {
  		float: left;
  		display: inline-block;
	}

	li a {
  		display: block;
 		color: white;
 		text-align: center;
  		padding: 14px 16px;
 		text-decoration: none;
	}

	li a:hover {
		  background-color: #62428C;
	}
	
	#customers {
 	 	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  		border-collapse: collapse;
 		width: 100%;
 		margin-top:16px;
 		margin-bottom: 128px;
	}

	#customers td, #customers th {
 		 border: 1px solid #ddd;
 		 padding: 8px;
 		 white-space: nowrap;
	}

	#customers tr:nth-child(even){background-color: #f2f2f2;}

	#customers tr:hover {background-color: #ddd;}

	#customers th {
  		padding-top: 12px;
  		padding-bottom: 12px;
  		text-align: left;
  		background-color: #502D7F;
  		color: white;
	}
	
   </style>
  
  </head>
  
  <body>
  
   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
   	<img id="headerImage">
   	<h1 align="center">CS Alumni App</h1>
   	
	<ul>
  		<li><a href="index.jsp">Home</a></li>
  		<li><a href="alumni.jsp">Alumni</a></li>
  		<li><a class="active" href="employers.jsp">Employers</a></li>
  		<li><a href="antology.jsp">Antology</a></li>
  		<li><a href="wordcloud.jsp">Word Cloud</a></li>
  		<li><input type="text" placeholder="Search.."></li>
	</ul>
	<br><br><br>		
	<div class="boxed">
		
		
			<%
				main newMain = new main();
				newMain.Connection();
				ArrayList<String> employersAll = newMain.getEmployersAll_JS();
				ArrayList<String> formatEmployers = newMain.formatList(employersAll, 75);
				
				for(String emps : formatEmployers){
					out.println(emps);
				}
				
			%>
		
	</div>
	
  </body>
  
</html>