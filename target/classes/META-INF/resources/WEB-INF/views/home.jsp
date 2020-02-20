<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<html lang="en">
<head>
    <script type="text/javascript" src="<c:url value="/js/jquery.js"/>" ></script>
</head>
<body>
<h2>WELCOME TO HOME</h2>
<h2>THIS IS FROM ICT DEPT. Todays Dollar rate = ${dollarRate}</h2>
<h2>${name}</h2>

<a href="/home/student">Add Student</a><br>
<a href="/home/studentList">View Student List</a><br>
<jsp:include page="footer.jsp"/>

</body>
</html>