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
          <li class="nav-item">
            <a class="nav-link" href="register">Sign Up</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login">Login</a>
          </li>
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
                    <img class="rounded-circle" src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200" alt="" />
                  </div>
                </div>
                <div class="text-center">
                  <h1 class="display-4 text-center">John Doe</h1>
                  <p class="lead text-center">Developer at Microsoft</p>
                  <p>Seattle, WA</p>
                  <p>
                    <a class="text-white p-2" href="#">
                      <i class="fas fa-globe fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="#">
                      <i class="fab fa-twitter fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="#">
                      <i class="fab fa-facebook fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="#">
                      <i class="fab fa-linkedin fa-2x"></i>
                    </a>
                    <a class="text-white p-2" href="#">
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
                <h3 class="text-center text-info">John's Bio</h3>
                <p class="lead">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Provident fuga cum necessitatibus blanditiis vel,
                  officia facere porro esse numquam assumenda doloremque saepe aliquam nemo excepturi aliquid maiores! Excepturi,
                  libero repudiandae.
                </p>
                <hr />
                <h3 class="text-center text-info">Skill Set</h3>
                <div class="row">
                  <div class="d-flex flex-wrap justify-content-center align-items-center">
                    <div class="p-3">
                      <i class="fa fa-check"></i> HTML</div>
                    <div class="p-3">
                      <i class="fa fa-check"></i> CSS</div>
                    <div class="p-3">
                      <i class="fa fa-check"></i> JavaScript</div>
                    <div class="p-3">
                      <i class="fa fa-check"></i> Python</div>
                    <div class="p-3">
                      <i class="fa fa-check"></i> C#</div>
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
                <li class="list-group-item">
                  <h4>Microsoft</h4>
                  <p>Oct 2011 - Current</p>
                  <p>
                    <strong>Position:</strong> Senior Developer
                  </p>
                  <p>
                    <strong>Description:</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde doloribus dicta enim
                    excepturi laborum voluptatem nam provident quisquam facere. Quae?</p>
                </li>
                <li class="list-group-item">
                  <h4>Sun Microsystems</h4>
                  <p>Oct 2004 - Nov 2011</p>
                  <p>
                    <strong>Position: </strong> Systems Admin</p>
                  <p>
                    <p>
                      <strong>Location: </strong> Miami, FL
                    </p>
                    <strong>Description: </strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde doloribus dicta
                    enim excepturi laborum voluptatem nam provident quisquam facere. Quae?</p>
                </li>
              </ul>
            </div>
            <div class="col-md-6">
              <h3 class="text-center text-info">Education</h3>
              <ul class="list-group">
                <li class="list-group-item">
                  <h4>Univeresity Of Washington</h4>
                  <p>Sep 1993 - June 1999</p>
                  <p>
                    <strong>Degree: </strong>Masters</p>
                  <p>
                    <strong>Field Of Study: </strong>Computer Science</p>
                  <p>
                    <p>
                      <strong>Description:</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde doloribus dicta
                      enim excepturi laborum voluptatem nam provident quisquam facere. Quae?</p>
                </li>
              </ul>
            </div>
          </div>

          <!-- Profile Github -->
          <div ref="myRef">
            <hr />
            <h3 class="mb-4">Latest Github Repos</h3>
            <div key={repo.id} class="card card-body mb-2">
              <div class="row">
                <div class="col-md-6">
                  <h4>
                    <Link to={repo_url} class="text-info" target="_blank"> Repository One
                    </Link>
                  </h4>
                  <p>Repository description</p>
                </div>
                <div class="col-md-6">
                  <span class="badge badge-info mr-1">
                    Stars: 44
                  </span>
                  <span class="badge badge-secondary mr-1">
                    Watchers: 21
                  </span>
                  <span class="badge badge-success">
                    Forks: 122
                  </span>
                </div>
              </div>
            </div>
          </div>
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