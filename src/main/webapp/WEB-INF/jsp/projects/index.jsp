<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Projects</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/stylesheets/projects/index.css"/>" />
</head>
<body>
<div style="padding: 3px;">

    <div id="proj-table-container">
        <div class="panel panel-default panel-table">
            <div class="panel-heading">
                <div class="row">
                    <div class="col col-xs-2">
                        <h3 class="panel-title">Projects</h3>
                    </div>
                    <div class="col-xs-6">
                        <div class="input-group" id="search">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-primary">
						      		<span class="glyphicon glyphicon-search" aria-hidden="true">
						        	</span>
                                </button>
                            </div>
                            <input type="text" class="form-control" placeholder="Search for...">
                        </div><!-- /input-group -->
                    </div>
                    <div class="col col-xs-4 text-right">
                        <button type="button" class="btn btn-sm btn-primary btn-create">Create New Project</button>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <table id="proj-table" class="table table-striped table-bordered table-hover table-list">
                    <thead>
                    <tr>
                        <th></th>
                        <th class="hidden-xs"><span class="col-header">Project ID</span></th>
                        <th><span class="col-header">Project Name</span></th>
                        <th><span class="col-header">Customer Country</span></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td align="center" width="107">
                            <div class="actions-box">
                                <a class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span></a>
                                <a class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
                            </div>
                        </td>
                        <td class="hidden-xs">1</td>
                        <td>Project 1</td>
                        <td>USA</td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="col col-xs-4">Page 1 of 5
                    </div>
                    <div class="col col-xs-8">
                        <ul class="pagination hidden-xs pull-right">
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                        </ul>
                        <ul class="pagination visible-xs pull-right">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<script src="<c:url value="/resources/scripts/projects/index.js"/>"></script>
</body>
</html>
