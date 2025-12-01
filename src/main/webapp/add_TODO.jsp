<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link>
<%@include file="component/allCSS.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp"%>
 <h1 class="text-center text-success">TODO-APP</h1>
    <div class="container">
    <div class="row">
    <div class="col-md-6 offset-md-3"> 
    <div class="card" > 
    <div class="card-body" > 
    </div>
    </div>
<form>
  <div class="mb-3">
    <label for="todoInput" class="form-label">TODO</label>
    <input type="text" class="form-control" id="todoInput" aria-describedby="todoHelp">
    <div id="todoHelp" class="form-text">Enter the task you want to add.</div>
</div>
 <div class="mb-3">
    <label for="todoInput" class="form-label">Time Window</label>
    <input type="text" class="form-control" id="todoInput" aria-describedby="todoHelp">
    <div id="todoHelp" class="form-text">Enter the time range</div>
</div>
 
  <button type="submit" class="btn btn-primary">Submit</button>

</form>
    
    </div>
    </div>
    </div>


</body>
</html>
