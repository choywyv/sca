<%@page import = "java.sql.*, java.util.*, java.text.*" %>

<%!

  Connection conn;
  PreparedStatement pstmt;

%>

<%

  Class.forName ("com.mysql.jdbc.Driver");  
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sca","ubuntu","ubuntu");  
  pstmt = conn.prepareStatement ("insert into visits (ip, visittime) values (?, ?)");  
  pstmt.setString (1, request.getRemoteAddr());
  pstmt.setTimestamp (2, new java.sql.Timestamp (Calendar.getInstance().getTime().getTime()));
  pstmt.executeUpdate ();
  
%>

<%

  pstmt.close ();
  conn.close();

%>