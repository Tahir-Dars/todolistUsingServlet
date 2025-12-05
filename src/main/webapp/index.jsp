<%@page import="com.entity.Entity"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.todoDAO"%>
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
<%
	String sucMsg = (String) session.getAttribute("sucMsg");
	if (sucMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=sucMsg%></div>
	<%
	session.removeAttribute("sucMsg");
	}
	%>
	
	<%
	String errMsg = (String) session.getAttribute("errMsg");
	if (errMsg != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=errMsg%></div>
	<%
	session.removeAttribute("errMsg");
	}
	%>
 <div class="Container">
 <div class="card" style="background-color: darkkhaki; border:1px solid darkkhaki; ">
  <div class="card-body">
    <table class="table table-striped"  style="border:1px solid darkkhaki;">
      <thead style="background-color: #1A2A40;">
        <tr>
          <th scope="col" style="color:darkkhaki;">TODO_ID</th>
          <th scope="col" style="color:darkkhaki;">TODO</th>
          <th scope="col"style="color:darkkhaki;">Time Window</th>
          <th scope="col"style="color:darkkhaki;">Status</th>
          <th scope="col"style="color:darkkhaki;">Changing</th>
        </tr>
      </thead>
      <tbody>
         <%
						todoDAO dao = new todoDAO(DBConnect.getConn());
						List<Entity> todo = dao.getTodo();
						for (Entity e : todo) {
						%>
						<tr>
							<th scope="row"><%=e.getId()%></th>
							<td><%=e.getTodo()%></td>
							<td><%=e.getTimeWindow()%></td>
							<td><%=e.getStatus()%></td>
							<td><a href="" class="btn btn-sm btn-success">Edit</a> 
                             <a href="delete?id=<%=e.getId()%>" class="btn btn-sm btn-danger">delete</a></td>
						</tr>
						<%
						}
						%>
                  </tbody>
           </table>
  </div>
</div>
 </div>
</body>
</html>
<%--  --%>

