<%-- 
    Document   : index
    Created on : Jul 13, 2015, 6:28:36 PM
    Author     : java2
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.secure.kk.action.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Secure_Dynamic_Multi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
    </head>
    <body>
        <%
            if(request.getParameter("msg")!=null)
            {%>
            <script>alert('Response Sent');</script>
            <%}
        %>
        <div id="main">
            <div id="header">
                <center><h1>A Secure and Dynamic Multi-keyword Ranked Search <br />Scheme over Encrypted Cloud Data</h1></center>
                <div id="menu">
                    <ul>
                        <li class="first"><a href="owner.jsp" title="">Home</a></li>
                        <li><a href="#" id="fupload" title="">File Upload</a></li>
                        <li><a href="#" id="fdetails" title="">File Details</a></li>
                        <li><a href="#" href="fresponse.jsp" title="">Request File</a></li>
                        <li><a href="prequest.jsp" id="cloud" title="">Password</a></li>
                        <li><a href="index.jsp"  title="">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="container"><br />
                <div class="fdynamic" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 1200px;height: 300px;margin-left: 100px;margin-top: 60px">
                    <center><h1>File Request Details</h1></center>
                    <center>
                        <table border="1" style="text-align: center">
                            <tr>
                                <th>File Name</th>
                                <th>User Name</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <%
                                    String uname = session.getAttribute("email").toString();
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from request where owner ='" + uname + "'");
                                        while (rs.next()) {%>
                                <td><%=rs.getString("fname")%></td>
                                <td><%=rs.getString("uname")%></td>
                                <td><%=rs.getString("status")%></td>
                                <td><a href="raction.jsp?<%=rs.getString("fname")%>,<%=rs.getString("uname")%>,<%=uname%>"><button class="button">Response</button></a></td>
                            </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table><br />

                    </center>
                </div>
            </div>
            <div id="footer"><br /><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

