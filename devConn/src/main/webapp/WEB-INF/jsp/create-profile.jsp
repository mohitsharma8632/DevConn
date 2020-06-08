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

  <!-- Create Profile -->
  <div class="create-profile">
    <div class="container">
      <div class="row">
        <div class="col-md-8 m-auto">
          <a href="dashboard" class="btn btn-light">
            Go Back
          </a>
          <h1 class="display-4 text-center">Create Your Profile</h1>
          <p class="lead text-center">Let's get some information to make your profile stand out</p>
          <form action="CreateProfileControl"  method="post" >

            <div class="form-group">
              <select class="form-control form-control-lg" name="status" required>
                <option value="">* Select Professional Status</option>
                <option value="Developer">Developer</option>
                <option value="Junior Developer">Junior Developer</option>
                <option value="Senior Developer">Senior Developer</option>
                <option value="Manager">Manager</option>
                <option value="Student or Learning">Student or Learning</option>
                <option value="Instructor">Instructor or Teacher</option>
                <option value="Intern">Intern</option>
                <option value="Other">Other</option>
              </select>
              <small class="form-text text-muted">Give us an idea of where you are at in your career</small>
            </div>
            <div class="form-group">
              <input type="text" class="form-control form-control-lg" placeholder="Company or School" name="company"  required/>
              <small class="form-text text-muted">*Could be your own company/school or one you work for</small>
            </div>
            <div class="form-group">
              <input type="text" class="form-control form-control-lg" placeholder="Location" name="location" required />
              <small class="form-text text-muted">*City & state suggested (eg. Delhi, Mumbai)</small>
            </div>
            <div class="form-group">
              <input type="text" class="form-control form-control-lg" placeholder="Skills" name="skill"  required/>
              <small class="form-text text-muted">*Please use comma separated values (eg. HTML,CSS,JavaScript,PHP)</small>
            </div>
            <div class="form-group">
              <input type="text" class="form-control form-control-lg" placeholder="Github Username" name="gitname" required/>
              <small class="form-text text-muted">*Github link, include your username</small>
            </div>
            <div class="form-group">
              <textarea class="form-control form-control-lg" placeholder="A short bio of yourself" name="bio" required></textarea>
              <small class="form-text text-muted">*Tell us a little about yourself</small>
            </div>
            <div class="mb-3">
              <button type="button" class="btn btn-light">Add Social Network Links</button>
              <span class="text-muted">Optional</span>
            </div>

            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fab fa-twitter"></i>
                </span>
              </div>
              <input type="text" class="form-control form-control-lg" placeholder="Twitter Profile URL" name="a" />
            </div>

            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fab fa-facebook"></i>
                </span>
              </div>
              <input type="text" class="form-control form-control-lg" placeholder="Facebook Page URL" name="b" />
            </div>

            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fab fa-linkedin"></i>
                </span>
              </div>
              <input type="text" class="form-control form-control-lg" placeholder="Linkedin Profile URL" name="c" />
            </div>

            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fab fa-youtube"></i>
                </span>
              </div>
              <input type="text" class="form-control form-control-lg" placeholder="YouTube Channel URL" name="d" />
            </div>

            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fab fa-instagram"></i>
                </span>
              </div>
              <input type="text" class="form-control form-control-lg" placeholder="Instagram Page URL" name="e" />
            </div>
            <input type="submit" class="btn btn-info btn-block mt-4" value="submit"/>
          </form>
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