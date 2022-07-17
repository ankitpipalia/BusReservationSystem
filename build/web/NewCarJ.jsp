<%-- 
    Document   : NewCarJ
    Created on : Jun 18, 2019, 9:12:43 PM
    Author     : dell
--%>
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
                   <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String inputType=request.getParameter("inputType");
             String inputSeats=request.getParameter("inputSeats");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/bus","root","root1234");
             
             st = c1.createStatement();
             q="insert into nbus(bus_type,tot_seats) values('"+ inputType +"','"+ inputSeats +"')";
             
             st.executeUpdate(q);
                   
    }
    catch(Exception e)
    {
                    out.println("Something went wrong");
                     out.println("<a href='NewCar.jsp'>Try Again</a>");
    }        
            
   %>
   <%
        String redirectURL="ShowBooking.jsp";
        response.sendRedirect(redirectURL);
        %>
           </div>
           </div>        
    </body>
</html>
