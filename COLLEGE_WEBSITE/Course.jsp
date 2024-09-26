<div id="courseSection">
<%@page language="java" %>
<head>
	<style>
		
        .tab {
            width: 60%;
            margin: auto;
            border-collapse: collapse;
            background-color: #d7dbdd;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
			border-radius : 8px;
			
        }
		tr{
			padding : 10px;
		}
        .image {
            width: 100px;
            height: auto;
            border-radius: 5px;
        }
		td:nth-child(1){
			padding : 10px;
		}
		td:nth-child(5){
			padding-right : 20px;
		}
		button{
			padding : 10px;
			background-color : #f4a49c;
			color : white;
			border : solid 2px #f4a49c;
			border-radius : 5px;
		}
		button:hover{
			color : #f4a49c;
			background-color : white;
		}
	</style>
</head>
<body class="bo">
<%
	String courseName = request.getParameter("courseName");
	String price = request.getParameter("price");
	String author = request.getParameter("author");
%>
	<table class="tab">
		<tr>
			<td><img class="image" src="Java.jpg" alt="CourseLogo"></td>
			<td>Course Name : <%=courseName %></td>
			<td>Price : <%=price %>/-</td>
			<td>Author : <%=author %></td>
			<td><button>REGISTER</button></td>
		</tr>
	</table>
</body>
</div>