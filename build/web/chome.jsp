<%-- 
    Document   : index
    Created on : Jul 13, 2015, 6:28:36 PM
    Author     : java2
--%>

<%@page import="com.secure.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Secure_Dynamic_Multi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script>
            $(function () {
                $(".owner").hide();
                $(".user").hide();
                $("#owner").click(function () {
                    $(".user").hide();
                    $(".home").hide();
                    $(".owner").show();
                });
                $("#user").click(function () {
                    $(".owner").hide();
                    $(".home").hide();
                    $(".user").show();
                });
            });
        </script>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <center><h1>A Secure and Dynamic Multi-keyword Ranked Search <br />Scheme over Encrypted Cloud Data</h1></center>
                <div id="menu">
                    <ul>
                        <li class="first"><a href="chome.jsp" title="">Home</a></li>
                        <li><a href="#" id="owner" title="">Data Owner Details</a></li>
                        <li><a href="#" id="user" title="">User Details</a></li>
                        <li><a href="index.jsp"  title="">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="container"><br />
                <div class="home" style="width: 1000px;height:  400px;margin-left: 200px;border-radius: 20px;margin-top: 10px;background-image: url('images/cloud.jpg')">
                    
                </div>
                <div class="owner" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: auto;height: auto;margin-top: 60px">
                    <center><h1 style="display: block;">Data Owner Details</h1></center><hr>
                    <center> <table border="1"style="text-align: center">
                            <tr>
                                <th>Name</th>
                                <th>Password</th>
                                <th>Email</th>
                                <th>Birth Day</th>
                                <th>Gender</th>
                                <th>Location</th>
                            </tr>
                            <tr>
                                <%
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from reg where role='Owner'");
                                        while (rs.next()) {%>
                                <td><%=rs.getString("Name")%></td>
                                <td>*********</td>
                                <td><%=rs.getString("Email")%></td>
                                <td><%=rs.getString("DOB")%></td>
                                <td><%=rs.getString("Gender")%></td>
                                <td><%=rs.getString("Loc")%></td>
                                <%}
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                %>
                            </tr>
                        </table>
                    </center>
                </div>
                <div class="user" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: auto;height: auto;margin-top: 60px">
                    <center><h1 style="display: block;">User Details</h1></center><hr>
                    <center> <table border="1"style="text-align: center">
                            <tr>
                                <th>Name</th>
                                <th>Password</th>
                                <th>Email</th>
                                <th>Birth Day</th>
                                <th>Gender</th>
                                <th>Location</th>
                            </tr>
                            <tr>
                                <%
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from reg where role='User'");
                                        while (rs.next()) {%>
                                <td><%=rs.getString("Name")%></td>
                                <td>*********</td>
                                <td><%=rs.getString("Email")%></td>
                                <td><%=rs.getString("DOB")%></td>
                                <td><%=rs.getString("Gender")%></td>
                                <td><%=rs.getString("Loc")%></td>
                                <%}
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                %>
                            </tr>
                        </table>
                    </center>
                </div>
            </div>
            <div id="footer"><br /><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

