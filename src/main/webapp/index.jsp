<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp" %>
</head>
<body style="background-color: darkkhaki;" >
<%@include file="component/navbar.jsp"%>
<h1 class="text-center text-success" style="color: #1A2A40;">TODO-APP</h1>
 <div class="Container">
 <div class="card" style="background-color: darkkhaki; border:1px solid darkkhaki; ">
  <div class="card-body">
    <table class="table table-striped"  style="border:1px solid darkkhaki;">
      <thead style="background-color: #1A2A40;">
        <tr>
          <th scope="col" style="color:darkkhaki;>TODO_ID</th>
          <th scope="col" style="color:darkkhaki;>TODO</th>
          <th scope="col"style="color:darkkhaki;>Time Window</th>
          <th scope="col"style="color:darkkhaki;>Status</th>
          <th scope="col"style="color:darkkhaki;>Changing</th>
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
