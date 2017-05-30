<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
  <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
  
<body>
  <div class="page-wrap">
    
    <div class="page-banner">
     <p>just do it !</p>
    </div>
  
    <nav class="page-navigation">
      <ul>
        <li><a href="${pageContext.request.contextPath}">Home</a></li>
        <li class="dropdown">
          <a href="javascript:void(0)" class="dropbtn">Lab 6</a>
          <div class="dropdown-content">
            <a href="${pageContext.request.contextPath}/lab6_1/arrayDataEntry">Lab 6.1</a>
            <a href="${pageContext.request.contextPath}/lab6_2/taskForm">Lab 6.2</a>
          </div>
        </li>
        <li><a href="#news">Lab 7</a></li>
        <li><a href="#news">Lab 8</a></li>
        <li><a href="#news">Lab 9</a></li>
      </ul>
    </nav>
    
    <div class="page-main-section-lab61">
      <div class="page-main-section-lab61-wrap">
     <h1>All questions: </h1>
 				 <table>
					<thead>
						<tr>
							<th>Question</th>
							<th>Answer1</th>
							<th>Answer2</th>
							<th>Answer3</th>
							<th>Answer4</th>
							<th>Answer5</th>
							<th>Correct answer</th>
							<th>Mark</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${taskList}" var="task">
							<tr>
								<td><c:out value="${task.question}" /></td>
								<td><c:out value="${task.answer1}" /></td>
								<td><c:out value="${task.answer2}" /></td>
								<td><c:out value="${task.answer3}" /></td>
								<td><c:out value="${task.answer4}" /></td>
								<td><c:out value="${task.answer5}" /></td>
								<td><c:out value="${task.correctAnswer}" /></td>
								<td><c:out value="${task.mark}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
  
  
      </div>
    </div>
    
    <footer class="page-footer">
      <div class="page-footer-wrap">
        <p>&#169; BAND 3</p>
        <p>kyiv / ukraine</p>
      </div>
    </footer>
    
  </div>
</body>
</html>