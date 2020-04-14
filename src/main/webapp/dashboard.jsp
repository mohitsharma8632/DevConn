<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">


  <link rel="stylesheet" href="css/style.css">
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
            <a class="nav-link" href="#">
              <img class="rounded-circle" style="width: 25px;margin-right:5px" src="https://www.gravatar.com/avatar/anything?s=200&d=mm"
                alt="" title="You must have a Gravatar connected to your email to display an image" /> Logout
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Dashboard -->
  <div class="dashboard">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-4">Dashboard</h1>
          <p class="lead text-muted">Welcome John Doe</p>
          <!-- Dashboard Actions -->
          <div class="btn-group mb-4" role="group">
            <a href="edit-profile" class="btn btn-light">
              <i class="fas fa-user-circle text-info mr-1"></i> Edit Profile</a>
            <a href="add-experience" class="btn btn-light">
              <i class="fab fa-black-tie text-info mr-1"></i>
              Add Experience</a>
            <a href="add-education" class="btn btn-light">
              <i class="fas fa-graduation-cap text-info mr-1"></i>
              Add Education</a>
          </div>

          <!-- Experience -->
          <div>
            <h4 class="mb-2">Experience Credentials</h4>
            <table class="table">
              <thead>
                <tr>
                  <th>Company</th>
                  <th>Title</th>
                  <th>Years</th>
                  <th />
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Tech Guy Web Solutions</td>
                  <td>Senior Developer</td>
                  <td>
                    02-03-2009 - 01-02-2014
                  </td>
                  <td>
                    <button class="btn btn-danger">
                      Delete
                    </button>
                  </td>
                </tr>
                <tr>
                  <td>Traversy Media</td>
                  <td>Instructor & Developer</td>
                  <td>
                    02-03-2015 - Now
                  </td>
                  <td>
                    <button class="btn btn-danger">
                      Delete
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

          <!-- Education -->
          <div>
            <h4 class="mb-2">Education Credentials</h4>
            <table class="table">
              <thead>
                <tr>
                  <th>School</th>
                  <th>Degree</th>
                  <th>Years</th>
                  <th />
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Northern Essex</td>
                  <td>Associates</td>
                  <td>
                    02-03-2007 - 01-02-2009
                  </td>
                  <td>
                    <button class="btn btn-danger">
                      Delete
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

          <div style="margin-bottom: 60px;">
            <button class="btn btn-danger">
              Delete My Account
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="bg-dark text-white mt-5 p-4 text-center">
    Copyright &copy; 2018 Dev Connector
  </footer>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>