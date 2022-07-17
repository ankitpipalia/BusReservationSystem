<%-- 
    Document   : BookCar
    Created on : Jun 18, 2019, 8:02:36 PM
    Author     : dell
--%>

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
           <div class="col-lg-11 offset-1 jumbotron" style="background-color: white">
               <h1 class="text-primary align-content-center">Car Rental System</h1>
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
                <li class="nav-item">
                    <a class="nav-link" href="NewCar.jsp">Car</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="BookCar.jsp">Booking</a>
                </li>
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron" style="background-color: white">
                   <div>
                       <a href="ShowBooking.jsp"><h5 class="text-primary align-content-end">Show Booking Here</h5></a>
                   </div>
               <div class="col-lg-5 offset-3">             
                <h3 class="text-primary">Booking Car</h3><br />
                   <form action="BookCarJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Customer Name</label>
                        <input class="form-control" type="text" name="name" required placeholder="Enter Name" />
                    </div>
                     <div class="form-group">
                        <label for="inputName">Mobile</label>
                        <input class="form-control" type="text" name="mob" required placeholder="Enter Mobile" />
                    </div>
                        
                        <div class="form-group">
                        <label for="inputName">Address</label>
                        <input class="form-control" type="text" name="addr" required placeholder="Enter Address" />
                    </div>
                       
                        <div class="form-group">
                        <label for="inputName">passenger</label>
                        <input class="form-control" type="text" name="pass" required placeholder="Enter Total Passanger" />
                    </div>                
                        <div class="form-group">
                        <label for="inputName">From</label>
                        <input class="form-control" type="text" name="froms" required placeholder="Enter From City" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">To</label>
                        <input class="form-control" type="text" name="tod" required placeholder="Enter To City" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Price</label>
                        <input class="form-control" type="text" name="price" required placeholder="Enter Price" />
                    </div>
                    <button type="submit" class="btn btn-primary">Book Car</button>
                </form>
                 </div>
                   </div>
           </div>
           </div>        
    </body>
</html>
