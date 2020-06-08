<%@page import="com.actions.Serve"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.actions.Getc"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
         <%

    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    
    if(session.getAttribute("email")==null){  
    	response.sendRedirect("landing");
    }  
  
  
    %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

 <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"> 
   <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <title>Welcome to DevConnector</title>
</head>

<body>
  <!-- Navbar (Signed in) -->
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark mb-4">
    <div class="container">
      <a class="navbar-brand" href="landing">DevConnector</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mobile-nav">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="mobile-nav">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="profiles"> Developers
            </a>
          </li>
        </ul>

        <ul class="navbar-nav ml-auto">
               <li class="nav-item">
            <a class="nav-link" href="myprofile">
              My profile
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="feed">
              Post Feed
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="dashboard">
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="logout">
              <img class="rounded-circle" style="width: 25px;margin-right:5px" src="https://www.gravatar.com/avatar/anything?s=200&d=mm"
                alt="" title="You must have a Gravatar connected to your email to display an image" /> Logout
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


  <div class="feed">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- Post Form -->
          <div class="post-form mb-3">
            <div class="card card-info">
              <div class="card-header bg-info text-white">
                Say Somthing...
              </div>
              <div class="card-body">
                <form action="poster" method="post">
                  <div class="form-group">
                    <input type="text" class="form-control form-control-lg" placeholder="Create a post" name="poste"/>
                  </div>
                  <input type="submit" class="btn btn-dark" value="Post" />
                </form>
              </div>
            </div>
          </div>

          <!-- Post Feed -->
          <div class="posts">
            <!-- Post Item -->
         
                           
            <c:forEach var="p" items="${posts}">
            
               <div class="card card-body mb-3">
              <div class="row">
                <div class="col-md-4">
                  <a href="profile?email=${p.email}">
                    <img class="rounded-circle d-none d-md-block" src="propic.jsp?email=${p.email}"
                      alt="" />
                  </a>
                  <br />
                  <p class="text-center">${p.name}</p>
                </div>
                <div class="col-md-8">
                  <p class="lead">${p.post}</p>
                  
                  <a href="post?postid=${p.postid}" class="btn btn-info mr-1">
                    Comments
                  </a>
                </div>
              </div>
            </div>
            
            </c:forEach>
            
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>

  <!-- Footer -->
  <footer class="bg-dark text-white mt-5 p-4 text-center">
    Copyright &copy; 2020 Dev Connector
  </footer>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>