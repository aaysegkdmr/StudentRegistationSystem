<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<% 
        ResultSet rs = null;
      
        String id = request.getParameter("id");
       
        Connection con = null;
        PreparedStatement pst = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll", "root", "");
        pst = con.prepareStatement("delete from records where id = ?");
        
        pst.setString(1, id);
        pst.executeUpdate();

           
           %>
           
           <script>
               alert("Record Deleted")
           </script>
                   
           
     
