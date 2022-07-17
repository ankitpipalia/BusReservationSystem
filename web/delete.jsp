<html>

<body>
    <%@page import="java.sql.*" %>
    <%
        String id = request.getParameter("id");
        try{
            //1. Register the driver
            Class.forName("com.mysql.jdbc.Driver");
            
            //2. establish connection by con object
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","root1234");
             
             //3. Create the statement object which is used to execute query in database
             PreparedStatement ps = con.prepareStatement("DELETE FROM nbus WHERE id = ? ");
             
             ps.setString(1,id);
             ps.executeUpdate();
             
             con.close();
        }
        catch(Exception e){
        }
        %>
        
        <%
        String redirectURL="ShowCar.jsp";
        response.sendRedirect(redirectURL);
        %>
        
</body>

</html>