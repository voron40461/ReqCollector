<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Edit Card</title>
  <link rel="stylesheet" href="<c:url value="/resources/stylesheets/requirements/edit.css"/>">

</head>
<body>
	<div class="edit-card">
		  <p class="edit-card-title"><span>Card title</span><span style="float: right;"><span id="project-id">1</span>#<span id="card-id">1</span></span></p>
		  <div id="card-data" class="card-body">
		  	<p class="card-text" style="padding: 6px 9px 6px 9px;">Some quick example text to build on the card title and make up the bulk of the card's content.
		  	</p>
		  </div>
		  <div class="dropdown add-elem">
			  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
			  	<span class="glyphicon glyphicon-plus"></span> 
			  	Add
			  </button>
			  <ul class="dropdown-menu">
			    <li><a class="dropdown-item" href="#">Picture</a></li>
			    <li><a class="dropdown-item" href="#">IDEF 3D Diagram</a></li>
			  </ul>
		  </div>
		  <div class="card-params">
		  	  	
				  <select id="card-prior" class="form-control" style="width: 100px;">
				    <option>Critical</option>
				    <option selected>Normal</option>
				    <option>Low</option>
				  </select>
				
				
				  <select id="card-status" class="form-control" style="width: 170px; ">
				    <option>New</option>
				    <option selected>In Consideration</option>
				    <option>Approved</option>
				  </select>


				  <button id="btn-save" type="button" class="btn btn-default" style="float: right"><b>Save</b></button>
					<button id="btn-comment" type="button" class="btn btn-success" style="float: right; margin-right: 10px;">Comments</button>
		  </div>
		</div>

		<script src="<c:url value="/resources/scripts/requirements/edit.js"/>"></script>

</body>
</html>