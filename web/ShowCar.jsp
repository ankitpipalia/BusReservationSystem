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
                    <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/bus","root","root1234");
           
             st = c1.createStatement();
             q="select * from nbus";
             rs1=st.executeQuery(q);
             out.println("<table width='100%' border=1px solid>");
              out.println("<tr><th>Id</th><th>Car Type</th><th>Total Seats</th><th>Actions</td></tr>");
             while(rs1.next())
             {
                 int id=rs1.getInt("id");
                 String bus_type=rs1.getString("bus_type");
                 String tot_seats=rs1.getString("tot_seats");                 
                 out.println("<tr><td>"+id+"</td><td>"+bus_type+"</td><td>"+tot_seats+"</td>");   %>
                 <td><a href='delete.jsp?id=<%=id%>'>Delete</a></td>
                 </tr>
             <%}   
              }
             catch(Exception e)
             {
                   out.print(e);
             }
            
   %>
           </div>
           </div>        
    </body>
</html>
