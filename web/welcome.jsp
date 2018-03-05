<%--@ page import="com.endicott.edu.ui.UiMessage" --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Endicott Unhappiness Project</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href = "resources/style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

</head>
<body>

<%
  String errorMessage = (String) request.getAttribute("errorMessage");
%>

<p></p>
<p></p>
<div class="container">

  <form action="welcome" method="post">
  <div class="jumbotron">
    <h1>Endicott Unhappiness Project</h1>
    <p>The art of being really, really, really unhappy.</p>
    <div class="form-group">
      <input type="text" name="username" class="form-control" id="username" placeholder="User ID or Be Anonymous below. ">
    </div>
    <div class="container">
      <input type="submit" class="btn btn-info" name="button" value="Log In">
      <input type="submit" class="btn btn-info" name="button" value="Create Account">
      <input type="submit" class="btn btn-info" name="button" value="Be Anonymous">
    </div>
  </div>

<div class="container">
    <%
    if (errorMessage != null) { %>

  <div class="alert alert-danger">
    <strong>Info</strong> <%=errorMessage%>
  </div>
    <% } %>

</form>
</div>
</body>
</html>
