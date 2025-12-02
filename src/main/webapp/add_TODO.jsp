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

    <div class="container">
    <div class="row p-5">
    <div class="col-md-6 offset-md-3"> 
    <div class="card" > 
    <div class="card-body" style="background-color: #1A2A40; border: 1px solid black; border-radius: 8px;"> 
    <h3 class="text-center" style="color: darkkhaki;">Add TODO</h3>
    <form>
    <div class="mb-3">
    <label for="todoInput" class="form-label" style="color: darkkhaki;">TODO</label>
    <input type="text" class="form-control" id="todoInput" aria-describedby="todoHelp" style="color: darkkhaki; background-color: #1A2A40;">
    <div id="todoHelp" class="form-text" style="color: darkkhaki;">Enter the task you want to add.</div>
</div>
 <div class="mb-3">
    <label for="todoInput" class="form-label">Time Window</label>
    <input type="text" class="form-control" id="todoInput" aria-describedby="todoHelp" style="color: darkkhaki; background-color: #1A2A40;">
    <div id="todoHelp" class="form-text" style="color: darkkhaki;">Enter the time range</div>
</div>
 <div class="col-md-13 col-sm-6 col-12">
								<label for="inputState" class="form-label">Status</label> <select
									id="inputState" class="form-select w-100" style="color: darkkhaki; background-color: #1A2A40;">
									<option>Completed</option>
									<option selected>Pending</option>
								</select>
							</div>
                           <br>
                                  <div class="text-center">
                                  <button type="submit" class="btn btn-primary">ADD</button>
                                  </div>
                                                        </form>
                                                               </div>
                                                                   </div>

    
    </div>
    </div>
    </div>


</body>
</html>
