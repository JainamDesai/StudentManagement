

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
             <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="jumbotron">
            <h1>Welcome Registaration Form Page:- </h1>      
        </div>
        <div class="container">
            <form action="Registration" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Student Id</label>
    <input type="number" class="form-control" id="email" name="id"  placeholder="Enter id...........">
  </div>
  <div class="form-group">
    <label for="name">Student Name</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="Enter name..........">
  </div>
  <div class="form-group">
    <label for="city">Student City</label>
    <input type="text" class="form-control" id="city" name="city" placeholder="Enter city..........">
  </div>
  <div class="form-group">
    <label for="branch">Student Branch</label>
    <input type="text" class="form-control" id="branch" name="branch" placeholder="Enter branch..........">
  </div>        
  <button type="submit" class="btn btn-primary" id="submit">Submit</button>
</form>
        </div>
    </body>
</html>
