<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Rental System</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
         <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron" style="background-color: white;">
               <h1 class="text-primary align-content-center">Car Rental System</h1>
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
                <li class="nav-item">
                    <a class="nav-link active" href="NewCar.jsp">Car</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="BookCar.jsp">Booking</a>
                </li>
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron" style="background-color: white">
                   <div>
                       <a href="ShowCar.jsp"><h5 class="text-primary align-content-end">View all Cars Here</h5></a>
                   </div>
               <div class="col-lg-5 offset-3">             
                <h3 class="text-primary">Add New Car</h3><br />
                <form method="POST" action="NewCarJ.jsp">
                    <div class="form-group">
                        <label for="inputCar">Car Name</label>
                        <input type="text" name="inputType" class="form-control" placeholder="Enter Car Name" required>
                    </div>

                    <div class="form-group">
                        <label for="inputSeats">Total Seats</label>
                        <input class="form-control" type="text" required name="inputSeats" placeholder="Enter Number of Seats" />
                    </div>                    

                       <button type="submit" class="btn btn-primary">Add Car</button>
                       
               </form>
                   </div>
               </div>
                  
           </div>
           </div>        
    </body>
</html>
