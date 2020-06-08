<%@page import="java.sql.ResultSet"%>
<%@page import="com.actions.Getc"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.actions.Serve"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
   
      <%
      int flag=1;
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    if(session.getAttribute("email")==null){  
    	flag=0;
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
  <!-- Navbar -->
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
        
        <%
        String s=" ";
        if(flag==1){
        	
        	s="                           <li class=\"nav-item\">            <a class=\"nav-link\" href=\"myprofile\">              My profile            </a>          </li>          <li class=\"nav-item\">            <a class=\"nav-link\" href=\"feed\">              Post Feed            </a>          </li>          <li class=\"nav-item\">            <a class=\"nav-link\" href=\"dashboard\">              Dashboard            </a>          </li>          <li class=\"nav-item\">            <a class=\"nav-link\" href=\"logout\">              <img class=\"rounded-circle\" style=\"width: 25px;margin-right:5px\" src=\"https://www.gravatar.com/avatar/anything?s=200&d=mm\"  title=\"You must have a Gravatar connected to your email to display an image\" /> Logout</a>   </li>";
        	
        }
if(flag==0){
	s="   <li class=\"nav-item\"><a class=\"nav-link\" href=\"register\">Sign Up</a></li><li class=\"nav-item\">   <a class=\"nav-link\" href=\"login\">Login</a>";
	
        }
        
        
    out.print(s);    
        
        %>

        </ul>
      
      </div>
    </div>
  </nav>

  <!-- Profiles -->
  <div class="profiles">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-4 text-center">Developer Profiles</h1>
          <p class="lead text-center">Browse and connect with developers</p>

          <!-- Profile Item -->

<c:forEach var="p" items="${profilelist }">

 <div class="card card-body bg-light mb-3">
            <div class="row">
              <div class="col-2">
                <img class="rounded-circle" src="propic.jsp?email=${p.email}" width="180" height="180"  />
              </div>
              <div class="col-lg-6 col-md-4 col-8">
                <h3>${p.name}</h3>
                <p>${p.status} at ${p.company}</p>
                <p>${p.location}</p>
                <a href="profile?email=${p.email}" class="btn btn-info">View Profile</a>
              </div>
              <div class="col-md-4 d-none d-lg-block">
                <h4>Skill Set</h4>
                <ul class="list-group">

<c:forEach var="s" items="${p.skill}">
                  <li class="list-group-item">
                    <i class="fa fa-check pr-1"></i>${s}</li>
</c:forEach>
                </ul>
              </div>
            </div>
          </div>

</c:forEach>

        </div>
      </div>
    </div>
  </div>

  <!-- Footer  -->
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