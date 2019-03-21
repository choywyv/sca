<%@ page import = "java.sql.*" %>

<%

  Class.forName ("com.mysql.jdbc.Driver");  
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sca","ubuntu","ubuntu");  
  for (ResultSet rs = conn.prepareStatement ("select * from users").executeQuery (); rs.next (); ) out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
  conn.close();

%>  

<%=  request.getRemoteAddr() %>
<br>
<%=  request.getRemoteHost() %>
<br>
<%= request.getHeader("x-forwarded-for") %>