<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<h1 class="text-center text-success">TODO-APP</h1>
 <div class="Container">
 <div class="card">
  <div class="card-body">
    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">TODO_ID</th>
          <th scope="col">TODO</th>
          <th scope="col">Time Window</th>
          <th scope="col">Status</th>
          <th scope="col">Changing</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>JSP Learning </td>
          <td>4pm-5pm</td>
          <td>pending</td>
          <td>
          <a href="" class="btn btn-sm btn-success">Edit</a> 
          <a href="" class="btn btn-sm btn-danger">delete</a> 
              </td>
        </tr>
      
      </tbody>
    </table>
  </div>
</div>
 
 
 </div>


</body>
</html>
