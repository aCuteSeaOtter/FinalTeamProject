<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/star.css" rel="stylesheet"/>
<link href="/css/insertReview.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
<title>새글등록</title>
</head>
<jsp:include page="/WEB-INF/views/header.jsp" />
<body>

<h3>새글 등록하기</h3>
<hr>
<form action="saveReview" name="myform" id="myform" method="post" enctype="multipart/form-data">
<table border="1">
   <tr>
      <th width="70">제목</th><td align="left">
      <input type="text" name="review_title"/></td>
   </tr>
   <tr>
      <th >작성자</th><td align="left">
      <input type="text" name="member_nickname" size="10" value="${nickname}" readonly/></td>
   </tr>
   <tr id="starRow">
   <th>별점</th>
   <td>
      <fieldset>
         <input type="radio" name="review_star" class="star" value="5" id="rate1"><label
            for="rate1">★</label>
         <input type="radio" name="review_star" class="star" value="4" id="rate2"><label
            for="rate2">★</label>
         <input type="radio" name="review_star" class="star" value="3" id="rate3"><label
            for="rate3">★</label>
         <input type="radio" name="review_star" class="star" value="2" id="rate4"><label
            for="rate4">★</label>
         <input type="radio" name="review_star" class="star" value="1" id="rate5"><label
            for="rate5">★</label>
      </fieldset>
   </td>
   </tr>
   <tr>
      <th>내용</th><td align="left">
      <textarea name="review_content" cols="40" rows="10"></textarea></td>
   </tr>
   <tr>
      <th>파일추가</th>
      <td align="left">
         <input type="file" name="review_file">
      </td>
   </tr>
   <tr>
      <th colspan="2" align="center">
      <input type="submit" value=" 새글 등록 "/></th>
   </tr>
</table>
</form>
<hr>
<a href="reviewList">글목록</a>
<!-- FOOTER SECTION -->
 <jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
