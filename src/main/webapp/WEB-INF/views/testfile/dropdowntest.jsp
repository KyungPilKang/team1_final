<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>More HTML Form Stuff</title>
</head>
<body>
<h3>Contact Us</h3>
<p>Please send us an e-mail!</p>
<form action="dropdownlist" method="get">
Name: <input type="text" name="sender">
<p></p>
<select name="select">
<option value="literature" />국어</option>
<option value="math" />수학</option>
<option value="english" />영어</option>
<option value="society" />사회</option>
<option value="science" />과학</option>
</select>
<p></p>
Please enter your message!
<p></p>

<textarea rows="10" cols="50" name="message_body" /></textarea>
<p></p>
<input type="submit" name="submit" value="register!" />
</select>
</form>


</body>
</html>