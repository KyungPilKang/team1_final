<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Creating HTML Forms</h3>
	<form action="datalist" method="get"> 
		Username: <input type="text" name="username" />
		<p></p>
		Password: <input type="password" name="password" />
		<p></p>
		Gender : 
		<br/>
		<input type="radio" name="gender"/>Male
		<br/>
		<input type="radio" name="gender"/>Female
		<p></p>
		Favorite Food(Check all that apply!)
		<p></p>
		<input type="checkbox" name="fruit"/> Fruit
		<br />
		<input type="checkbox" name="salad" /> Salad
		<br />
		<input type="checkbox" name="pizza" /> Pizza
		<br />
		<input type="checkbox" name="cheeseburger" /> Cheeseburger
		<br />
		<input type="checkbox" name="iceCream" /> Ice Cream
		<p></p>
		<input type="submit" name="submit" value="register!" />
	</form>
</body>
</html>