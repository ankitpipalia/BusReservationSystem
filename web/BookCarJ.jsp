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
               <div class="col-lg-11 offset-1 jumbotron">
                    <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String name=request.getParameter("name");
             String mob=request.getParameter("mob");
             String addr=request.getParameter("addr");
             String pass=request.getParameter("pass");
             String from=request.getParameter("froms");
             String to=request.getParameter("tod");
             String price=request.getParameter("price");
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/bus","root","root1234");
             
             st = c1.createStatement();
             q="insert into boook(c_name,mob,addr,pass,froms,tod,price) values('"+ name +"','"+ mob +"','"+ addr +"','"+ pass +"','"+ from +"','"+ to +"','"+ price +"')";
             
             st.executeUpdate(q);
                   
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='Customer.jsp'>Try Again</a>");
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
