<%--
  Created by IntelliJ IDEA.
  User: bichngoc
  Date: 1/20/2024
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/shoeshopapp/CreateProForAdmin" method="post">
    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-3 col-form-label">Model</label>
        <div class="col-sm-9">
            <input type="text" class="form-control" id="inputEmail3" name="Model" placeholder="Model">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputPassword3" class="col-sm-3 col-form-label">Price</label>
        <div class="col-sm-9">
            <input type="text" class="form-control" id="inputPassword3" name="price" placeholder="Price">
        </div>
    </div>
    <div class="form-group row">
        <label for="disabledInput" class="col-sm-3 col-form-label">Create At</label>
        <div class="col-sm-9">
            <input class="form-control" id="disabledInput" type="datetime-local" name="create" placeholder="">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3" for="exampleFormControlTextarea1">Description</label>
        <div class="col-sm-9">
            <textarea class="form-control" id="exampleFormControlTextarea1"  name="description" rows="2"></textarea>
        </div>
    </div>
    <fieldset class="form-group">
        <div class="row">
            <label class="col-form-label col-sm-3 pt-0">Active</label>
            <div class="col-sm-9">
                <div class="form-check disabled">
                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" checked disabled>
                    <label class="form-check-label" for="gridRadios3"></label>
                </div>
            </div>
        </div>
    </fieldset>
    <div class="form-group mb-2">
        <button type="submit" class="btn btn-primary">Create</button>
    </div>
</form>
<%
    String mess = "";
    if (request.getAttribute("mess") != null) {
        mess =   (String) request.getAttribute("mess");
    }
    if (mess != null && !mess.isEmpty()) {
%>
<%= mess %>
<%
    }
%>
</body>
</html>
