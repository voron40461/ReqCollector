<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value="/resources/stylesheets/requirements/index.css"/>">
</head>
<body>

<div style="padding: 3px">
  <ul class="nav nav-tabs nav-justified">
    <li class="active"><a data-toggle="tab" href="#newReq">New Requirements</a></li>
    <li><a data-toggle="tab" href="#inCons">In Consideration</a></li>
    <li><a data-toggle="tab" href="#apprReq">Approved Requirements</a></li>
  </ul>

  						<div class="input-group">
							<div class="input-group-btn">
						    	<button type="button" class="btn btn-primary">
						      		<span class="glyphicon glyphicon-search" aria-hidden="true">
						        	</span>
						    	</button>
					    	</div>
					   		<input type="text" class="form-control" placeholder="Search for...">
				    	</div><!-- /input-group -->

  <div style="padding: 20px;">
    <div id="newReq" class="tab-pane fade in active flex-container">
        <div class="card" id="1_1">
		  <p class="card-title">Card title</p>
		  <p class="card-body">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		  <div class="card-params">
		  	<span class="card-priority card-normal">Normal</span>
		  	<span class="card-status card-new">New</span>
		  </div>
		</div>

		<div class="card" id="1_2">
		  <p class="card-title">Card title</p>
		  <p class="card-body">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		  <div class="card-params">
		  	<span class="card-priority card-normal">Normal</span>
		  	<span class="card-status card-new">New</span>
		  </div>
		</div>

		<div class="card" id="1_3">
		  <p class="card-title">Card title</p>
		  <p class="card-body">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		  <div class="card-params">
		  	<span class="card-priority card-normal">Normal</span>
		  	<span class="card-status card-new">New</span>
		  </div>
		</div>
	</div>
    <div id="inCons" class="tab-pane fade">
       <div class="card" id="1_4">
		  <p class="card-title">Card title</p>
		  <p class="card-body">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		  <div class="card-params">
		  	<span class="card-priority card-normal">Normal</span>
		  	<span class="card-status card-new">New</span>
		  </div>
		</div>
    </div>
    <div id="apprReq" class="tab-pane fade">
      ffff4
    </div>
    
  </div>
</div>

  <script src="<c:url value="/resources/scripts/requirements/index.js"/>"></script>
</body>
</html>