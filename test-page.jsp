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
 
  <form action="chooseQuestion" method="POST">
	    	<fieldset>
	          <legend>Questions of content: ${contentName }</legend>  
	           <select name="question">
	           <c:forEach items="${test}" var="qst">
	           <option>${qst}</option>
	          </c:forEach>
	           </select>
	          <p><input type="submit" name="testButton" value="Choose"/></p>
	        </fieldset>
		</form>

 
	      <form action="checkTest" method="POST">
	    	<fieldset>
	          <legend>Test based on content: ${contentName }</legend>  
	          <p><label>Question</label><textarea name="question" readonly>${testTask.question}</textarea></p>
	          <p><input type="radio" name="answer" value="1">${testTask.answer1}</p>
	           <p><input type="radio" name="answer" value="2">${testTask.answer2}</p>
	            <p><input type="radio" name="answer" value="3">${testTask.answer3}</p>
	             <p> <input type="radio" name="answer" value="4">${testTask.answer4}</p>
	              <p> <input type="radio" name="answer" value="5">${testTask.answer5}</p>
	          <p><input type="submit" name="testButton" value="Next"/></p>
	        </fieldset>
		</form>
  		<center><h1>Test status: ${status}, score: ${yourResult}/${totalMark }</h1></center>
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