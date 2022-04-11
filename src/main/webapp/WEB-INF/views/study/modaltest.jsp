<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<style>

*{
	 box-sizing : border-box;
}

body{
	background-color:#edeef6;
	font-family: 'Nanum Myeongjo', serif;
	display: flex; 
	align-items: center; 
	justify-content: center; 
	min-height: 100vh; 
	margin: 0;
}

button {
	background-color : #47a386;
	border : 0;
	border-radius: 5px; 
	box-shadow: 0 2px 4px rgba(0,0,0,0.2);
	color:#fff; 
	font-size : 14px; 
	padding 10px 25px; 
}

.modal-container{
	background-color: rgba(0,0,0,0.3);
	display: flex; 
	align-items: center; 
	justify-content: center; 
	position:fixed; 
	opacity: 0; 
	pointer-events: auto;
	top: 0; 
	left: 0; 
	height:100vh; 
	width:100vw; 
}
.modal {
	background-color:#fff;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0,0,0,0.2);
	padding:30px 50px; 
	width: 600px; 
	max-width:100%;
	text-galign: center;  
}

.modal-container.show{
	pointer-events: auto; 
	opacity: 1;
}


.modal h1{
	margin : 0; 
}

.modal p {
	font-size:14px; 
	opacity:0.7;
}
</style>
</head>
<body>
<button id="open">
Click me please
</button>

	<div class="modal-container" id="modal-container">
	 <div class="modal">
	    <h3>Modals are</h3>
	    <p>스터디이름 <br> 초등학교 <br> 과목: 시험 <br> 목표레벨: 초상위 <br> 스터디이름: <br> 스터디날짜: 2022-02-22 ~ 2022-03-25 <br></p>
	    <button id = "close">
	    close me 
	    </button>
	 </div>
	</div>
	
	<script> 
	const open = document.getElementById('open');
	const modal_container = document.getElementById('modal_container');
	const close = document.getElementById('close');
	
	open.addEventListener('click', ()=>{
		modal_container.classList.add('show');
	});
	
	close.addEventListener('click', ()=>{
		modal_container.classList.remove('show');
	});
	
	</script>
</body>
</html>