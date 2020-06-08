 <%@ page trimDirectiveWhitespaces="true" %>
<%@page import="com.actions.Getc"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("email");

try{
	
	Connection    con = Getc.connection();
    PreparedStatement ps = con.prepareStatement("select * from pic where email=?");
    ps.setString(1, id);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
    	System.out.println("3");
        Blob blob = rs.getBlob("profilepic");
        byte byteArray[] = blob.getBytes(1, (int)blob.length());
 OutputStream os = response.getOutputStream();
       os.write(byteArray);
        os.flush();
        os.close();
    }
    else{
    	response.sendRedirect("https://www.gravatar.com/avatar/anything?s=200&d=mm");    	
    }
}
catch(Exception e){
    System.out.println(e);
}   
%>
