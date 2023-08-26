<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management Application</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #3CB371">
                <div>
                    <a class="navbar-brand"> User Management</a>
                </div>

                <ul class="navbar-nav" style="background-color: #5F9EA0">
                    <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a ></li>
                </ul>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <c:if test="${user != null}">
                        <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                            </c:if>

                            <caption>
                                <h2>
                                    <c:if test="${user != null}">
                                        Edit User
                                    </c:if>
                                    <c:if test="${user == null}">
                                        Add New User
                                    </c:if>
                                </h2>
                            </caption>

                            <c:if test="${user != null}">
                                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                            </c:if>

                            <fieldset class="form-group">
                                <label>User Name</label> <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>User Email</label> <input type="text" value="<c:out value='${user.email}' />" class="form-control" name="email">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>User Country</label> <input type="text" value="<c:out value='${user.country}' />" class="form-control" name="country">
                            </fieldset>

                            <button type="submit" class="btn btn-success" style="background-color: #AB46D2">Save</button>
                </div>
            </div>
        </div>

    </body>
</html>
