<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 1/15/2024
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>uploadfile</title>
</head>
<body>
    <form method="POST" action="/test" enctype="multipart/form-data" >
        File:
        <input type="file" name="file" id="file" />
        <br/>
        <br/>
        Destination:
        <input type="text" value="/javaTpoint" name="destination"/>
        <br/>
        <br/>
        <input type="submit" value="Upload" name="upload" id="upload" />
    </form>
</body>
</html>
