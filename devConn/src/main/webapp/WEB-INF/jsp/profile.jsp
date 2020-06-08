<%@page import="com.actions.Serve"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.actions.Getc"%>
<%@page import="java.sql.Statement"%>
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

  <!-- Profile -->
  <div class="profile">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="col-6">
              <a href="profiles" class="btn btn-light mb-3 float-left">Back To Profiles</a>
            </div>
            <div class="col-6">

            </div>
          </div>

        <!-- Profile Header -->
          <div class="row">
            <div class="col-md-12">
              <div class="card card-body bg-info text-white mb-3">
                <div class="row">
                  <div class="col-4 col-md-3 m-auto">
      <img class="rounded-circle" src="propic.jsp?email=${p.email}"  alt="" width="250" height="250" />
                      </div>
                </div>
                <div class="text-center">
                  <h1 class="display-4 text-center">${p.name}</h1>
                  <p class="lead text-center">${p.status} at ${p.company}</p>
                  <p>${p.location}</p>
                  <p>
                    <a class="text-white p-2" href="${socials.a}">
                      <i class="fas fa-globe fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="${socials.b}">
                      <i class="fab fa-twitter fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="${socials.c}">
                      <i class="fab fa-facebook fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="${socials.d}">
                      <i class="fab fa-linkedin fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="${socials.e}">
                      <i class="fab fa-instagram fa-2x"></i>
                    </a>
                  </p>
                </div>
              </div>
            </div>
          </div>

          <!-- Profile About -->
          <div class="row">
            <div class="col-md-12">
              <div class="card card-body bg-light mb-3">
                <h3 class="text-center text-info">${p.name}'s Bio</h3>
                <p class="lead">${p.bio}
                </p>
                <hr />
                <h3 class="text-center text-info">Skill Set</h3>
                <div class="row">
                  <div class="d-flex flex-wrap justify-content-center align-items-center">
                    <c:forEach var="s" items="${p.skill}">
                    <div class="p-3">
                      <i class="fa fa-check"></i> ${s}</div>
                    </c:forEach>
                              </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Profile Creds -->
          <div class="row">
            <div class="col-md-6">
              <h3 class="text-center text-info">Experience</h3>
              <ul class="list-group">
              
              
              
              <c:forEach var="ex" items="${explist}">
                <li class="list-group-item">
                  <h4>${ ex.company}</h4>
                  <p>${ ex.from} - ${ ex.to}</p>
                  <p>
                    <strong>Position:</strong> ${ ex.title}
                  </p>
                  <p>
                    <strong>Description:</strong>${ ex.description}</p>
                </li>
                </c:forEach>
        
        
        
              </ul>
            </div>
            
            
            
            
            
            
            <div class="col-md-6">
              <h3 class="text-center text-info">Education</h3>
              <ul class="list-group">
              
              <c:forEach var="edu" items="${edulist}">
                <li class="list-group-item">
                  <h4>${edu.school}</h4>
                  <p>${edu.from} - ${edu.to}</p>
                  <p>
                    <strong>Degree: </strong>${edu.degree}</p>
                  
                    <p>
                      <strong>Description:</strong> ${edu.description}</p>
                </li>
                </c:forEach>
              </ul>
            </div>
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