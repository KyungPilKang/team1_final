<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<button onclick="requestPay()">결제하기</button>

	<script>
		function requestPay() {
			IMP.init('imp59784293'); //가맹점 식별코드(프로젝트 공용아이디로 설정되어있음)
			IMP.request_pay({
				pg : "inicis", //PG사
				pay_method : "card", //결제 카드
				merchant_uid : 'FL_' + new Date().getTime(), //주문 번호
				name : '결제테스트', //상품명
				amount : 100, //결제 가격
				buyer_email : 'iamport@siot.do', //구매자 이메일
				buyer_name : '구매자', //구매자 이름
				buyer_tel : '010-1234-5678', //구매자 전화번호
				buyer_addr : '서울특별시 강남구 삼성동', //구매자 주소
				buyer_postcode : '123-456' //구매자 우편번호
			}, function(rsp) { //콜백 구현부
				if (rsp.success) {
					console.log("성공");
					console.log(rsp.imp_uid); //승인 번호 콜백
					console.log(rsp.merchant_uid); //주문 번호 콜백
				} else {
					console.log("실패");
				}
			});
		}
	</script>
</body>
</html>