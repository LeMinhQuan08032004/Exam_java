<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: QuanLe
  Date: 5/22/2024
  Time: 8:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <%
        String fullName = request.getParameter("fullName");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String position = request.getParameter("position");
        String department = request.getParameter("department");

        Connection conn = null;
        PreparedStatement pst = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fptaptech2024", "root", "");
            String sql = "INSERT INTO Employee (FullName, Birthday, Address, Position, Department) VALUES (?, ?, ?, ?, ?)";
            pst = conn.prepareStatement(sql);
            pst.setString(1, fullName);
            pst.setDate(2, Date.valueOf(birthday)); // Convert string to java.sql.Date
            pst.setString(3, address);
            pst.setString(4, position);
            pst.setString(5, department);
            pst.executeUpdate();
            response.sendRedirect("list.jsp");
        } catch (Exception e) {
            e.printStackTrace();
           // out.println("Error: " + e.getMessage());
        } finally {
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        }
    %>
</head>
<body>

</body>
</html>
