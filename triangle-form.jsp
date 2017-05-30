<%@ page language="java" contentType="text/html;  charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lab 2</title>
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css"> -->
</head>
  
<body>
<div class="page-wrap">
  
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding-8 w3-card-2">
    <a href="${pageContext.request.contextPath}" class="w3-margin-left w3-bar-item w3-button"><b>BAND</b> 3</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="${pageContext.request.contextPath}#projects" class="w3-bar-item w3-button">Projects</a>
      <a href="${pageContext.request.contextPath}#about" class="w3-bar-item w3-button">About</a>
      <a href="${pageContext.request.contextPath}#contact" class="w3-bar-item w3-button w3-margin-right">Contact</a>
    </div>
  </div>
</div>

<header class="w3-header-page w3-header-lab7"  id="home">
  
</header>

<!-- Page content -->
<div class="w3-container w3-padding-8 w3-lab7" id="lab7">
  <h3 class="w3-border-bottom w3-border-light-grey w3-padding-8">Laboratory work 7</h3>
  <p><b>Задание 1.</b>Реализовать задания в виде оконных приложений. Для вывода сообщений при обработке исключений использовать диалоговые окна. 
Функции, реализуемые в заданиях, обязаны выполнять проверку передаваемых параметров и генерировать исключение в случае ошибочных. Все функции реализуются в таких вариантах:
	<br>
	- без спецификации исключений (если невозможно по смыслу задачи, то сделайте возможным, например поделите на ноль);
	<br>
	- с конкретной спецификацией с подходящим стандартным исключением;
	<br>
	- спецификация с собственным реализованным исключением.
	<br>
	<b>Функция вычисляет периметр треугольника.</b>
</p>
  
      <form:form class="w3-padding-16" action="calculate" modelAttribute="triangle">
        <fieldset>
          <legend>Triangle form</legend>  
          <p><label>First side length: </label><form:input class="w3-input" path="firstSide" type="number"/></p>
          <p><label>Second side length:</label><form:input class="w3-input" path="secondSide" type="number"/></p>
          <p><label>Third side length:</label><form:input class="w3-input" path="thirdSide" type="number"/></p>
          <p><form:button class="w3-button w3-black w3-section" type="submit" name="calcButton" value="calculate">Calculate</form:button> 
            <form:button class="w3-button w3-black w3-section" type="submit" name="calcButton" value="calculateNoSpec">Calculate no specification</form:button></p>
        </fieldset>
        </form:form>  
</div>  
   
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>&#169; BAND 3 </br> kyiv / ukraine</p>
</footer>

</div>
</body>
</html>