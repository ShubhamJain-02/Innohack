<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<style>
	@import url("https://fonts.googleapis.com/css?family=Sacramento&display=swap");

h1 {
/*   text-shadow: 0 0 5px #f562ff, 0 0 15px #f562ff, 0 0 25px #f562ff,
    0 0 20px #f562ff, 0 0 30px #890092, 0 0 80px #890092, 0 0 80px #890092;
  color: #fccaff; */
  text-shadow: 0 0 5px #ffa500, 0 0 15px #ffa500, 0 0 20px #ffa500, 0 0 40px #ffa500, 0 0 60px #ff0000, 0 0 10px #ff8d00, 0 0 98px #ff0000;
    color: #fff6a9;
  font-family: "Sacramento", cursive;
  animation: blink 12s infinite;
  -webkit-animation: blink 12s infinite;
}

@-webkit-keyframes blink {
  20%,
  24%,
  55% {
    color: #111;
    text-shadow: none;
  }

  0%,
  19%,
  21%,
  23%,
  25%,
  54%,
  56%,
  100% {
/*     color: #fccaff;
    text-shadow: 0 0 5px #f562ff, 0 0 15px #f562ff, 0 0 25px #f562ff,
      0 0 20px #f562ff, 0 0 30px #890092, 0 0 80px #890092, 0 0 80px #890092; */
  text-shadow: 0 0 5px #ffa500, 0 0 15px #ffa500, 0 0 20px #ffa500, 0 0 40px #ffa500, 0 0 60px #ff0000, 0 0 10px #ff8d00, 0 0 98px #ff0000;
    color: #fff6a9;
  }
}

@keyframes blink {
  20%,
  24%,
  55% {
    color: #111;
    text-shadow: none;
  }

  0%,
  19%,
  21%,
  23%,
  25%,
  54%,
  56%,
  100% {
/*     color: #fccaff;
    text-shadow: 0 0 5px #f562ff, 0 0 15px #f562ff, 0 0 25px #f562ff,
      0 0 20px #f562ff, 0 0 30px #890092, 0 0 80px #890092, 0 0 80px #890092; */
  text-shadow: 0 0 5px #ff00a9, 0 0 15px #ff00a9, 0 0 20px #ff00a9, 0 0 40px #ff00a9, 0 0 60px #ff0000, 0 0 10px #ff8d00, 0 0 98px #ff0000;
    color: #ffa3e0;
  }
}
	
		body {
			margin: 0;
			padding: 0;
			font-family: Arial, sans-serif;
			background-color: #292929;
		}
		
		.header {
			background-color: #00CFFF;
			color: #fff;
			padding: 20px;
			text-align: center;
			font-size: 30px;
			font-weight: bold;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
		}
		
		.menu {
			background-color: #121212;
			float: left;
			height: 100vh;
			width: 200px;
			padding: 20px;
			box-sizing: border-box;
			box-shadow: 2px 0 4px rgba(0, 0, 0, 0.2);
		}
		
		.menu a {
			display: block;
			padding: 10px;
			color: #fff;
			text-decoration: none;
			transition: background-color 0.2s ease-in-out;
		}
		
		.menu a:hover {
			background-color: #00CFFF;
		}
		
		.content {
			margin-left: 200px;
			padding: 20px;
			box-sizing: border-box;
		}
		
		.card {
			background-color: #212121;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
			padding: 20px;
			margin-bottom: 20px;
			border-radius: 5px;
			transition: box-shadow 0.2s ease-in-out;
		}
		
		.card:hover {
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
		}
		
		.card h2 {
			margin-top: 0;
			margin-bottom: 10px;
			font-size: 24px;
			font-weight: bold;
			color: #fff;
		}
		
		.card p {
			margin: 0;
			font-size: 16px;
			color: #fff;
		    text-shadow:
		    0 0 5px #fff,
		    0 0 10px #fff,
		    0 0 20px #fff,
		    0 0 40px #0ff,
		    0 0 80px #0ff,
		    0 0 90px #0ff,
		    0 0 100px #0ff,
		    0 0 150px #0ff;
		}
		
	</style>
</head>
<body>
	<div class="header">Dashboard</div>
	<div class="menu">
		<a href="Home.jsp">Home</a>
		<a href="Dashboard.jsp">Dashboard</a>
		<a href="Report.jsp">Reports</a>
		<a href="Certificate.jsp">Certification</a>
		<a href="vrfire.jsp">Training</a>
		<a href=#>Testing</a>
	</div>
	<div class="content">
		<div class="card">
			<h1>Scene 1</h1>
			<p>Successful 267</p>
			<hr width="15%" align="left">
			<p>Non successful 58</p>
		</div>
		<div class="card">
			<h1>Scene 2</h1>
			<p>Successful 202</p>
			<hr width="15%" align="left">
			<p>Non Successful 66</p>
		</div>
		<div class="card">
			<h1>Scene 3</h1>
			<p>Successful 173</p>
			<hr width="15%" align="left">
			<p>Non Successful 29</p>		
		</div>
		<div class="card">
			<h1>Scene 4</h1>
			<p>Successful 124</p>
			<hr width="15%" align="left">
			<p>Non Successful 49</p>
		</div>
	</div>
</body>
</html>

