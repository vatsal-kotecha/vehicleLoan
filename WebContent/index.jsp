<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/style.css"> 
 
<head>
</head>
<body>

<header>
<jsp:include page="header.jsp" /> 
</header>





<div class="slideshow-container">

<div class="mySlides fade">
 
  <img src="https://picsum.photos/1800/900?image=838" style="width:100%; height:700px; ">
  
</div>

<div class="mySlides fade">
  
  <img src="https://picsum.photos/1800/900?image=841" style="width:100%; height:700px ">
  
</div>

<div class="mySlides fade">
 
  <img src="https://picsum.photos/1800/900?image=839" style="width:100%; height:700px ">
  
</div>

</div>
<br>

<div style="text-align:center;display:none;">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<!--     <script  src="function.js"></script>
 -->
<footer>
<jsp:include page="footer.jsp" /> 
</footer>
    
</body>
</html>