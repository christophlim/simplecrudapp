<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Managers</title>
</head>
<body>
<img border="0" src="ibmpos_blue.jpg">
<h1>Managers</h1>
	 <table class="table table-bordered table-striped" border=1>
        <thead>
            <tr>
                <th>Manager Association Id</th>
                <th>Manager Id</th>
                <th>Employee Id</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${managers}" var="manager">
                <tr>
                    <td><c:out value="${manager.mgrAsId}" /></td>
                    <td><c:out value="${manager.mgrId}" /></td>
                    <td><c:out value="${manager.empId}"/></td>
                    <td><a href="HomeServlet?type=manager&action=mgredit&mgrAsId=<c:out value="${manager.mgrAsId}"/>">Update</a></td>
                    <td><a href="HomeServlet?type=manager&action=mgrdelete&mgrAsId=<c:out value="${manager.mgrAsId}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="buttons">
	    <p><a href="HomeServlet?type=manager&action=mgrinsert">Add Manager</a></p>
	    <p><a href="index.jsp">Go Back Home</a>
	</div>
</body>
</html>