<%--
  Created by IntelliJ IDEA.
  User: QuanLe
  Date: 5/22/2024
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add Employee</h2>
<form action="saveEmployee.jsp" method="post">
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" required><br>
    <label for="birthday">Birthday:</label>
    <input type="date" id="birthday" name="birthday" required><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required><br>
    <label for="position">Position:</label>
    <input type="text" id="position" name="position" required><br>
    <label for="department">Department:</label>
    <input type="text" id="department" name="department" required><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>

</body>
</html>
