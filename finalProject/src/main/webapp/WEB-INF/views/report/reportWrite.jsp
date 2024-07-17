<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 페이지</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    form {
        margin-top: 20px;
    }
    label {
        display: block;
        margin-top: 10px;
    }
    textarea {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    select, input[type="submit"] {
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: 100%;
    }
</style>
</head>
<body>
<h1>신고 페이지</h1>

<!-- URL에서 가져온 값을 출력 -->
<table>
    <tr>
        <th>항목</th>
        <th>내용</th>
    </tr>
    <c:if test="${not empty seq}">
        <tr>
            <td>게시물 번호</td>
            <td>${seq}</td>
        </tr>
    </c:if>
    <c:if test="${not empty rno}">
        <tr>
            <td>댓글 번호</td>
            <td>${rno}</td>
        </tr>
    </c:if>
    <c:if test="${not empty rcno}">
        <tr>
            <td>대댓글 번호</td>
            <td>${rcno}</td>
        </tr>
    </c:if>
    <c:if test="${not empty id}">
        <tr>
            <td>신고자</td>
            <td>${id}</td>
        </tr>
    </c:if>
</table>

<!-- 신고 처리 폼 -->
<form action="saveReport" method="post">
    <input type="hidden" name="seq" value="${seq}">
    <input type="hidden" name="rno" value="${rno}">
    <input type="hidden" name="rcno" value="${rcno}">
    <input type="hidden" name="reportId" value="${id}"> <!-- 여기도 필드명 변경 -->
    
    <label for="reportType">신고 유형:</label>
    <select name="reportType" id="reportType" required>
        <option value="스팸">스팸</option>
        <option value="욕설">욕설</option>
        <option value="부적절한 내용">부적절한 내용</option>
        <option value="기타">기타</option>
    </select>
    
    <label for="reason">신고 사유:</label>
    <textarea name="reportReason" id="reason" rows="4" required></textarea>
    
    <input type="submit" value="신고 제출">
</form>

</body>
</html>
