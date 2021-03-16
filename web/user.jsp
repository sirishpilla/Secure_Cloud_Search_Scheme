<%-- 
    Document   : index
    Created on : Jul 13, 2015, 6:28:36 PM
    Author     : java2
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
        <script>
            $(function () {
                $(".search").hide();
                $(".fdownload").hide();
                $(".cloud").hide();
                $("#search").click(function () {
                    $(".abstract").hide();
                    $(".fdownload").hide();
                    $(".cloud").hide();
                    $(".search").show();
                });
                $("#fdownload").click(function () {
                    $(".abstract").hide();
                    $(".search").hide();
                    $(".cloud").hide();
                    $(".fdownload").show();
                });
                $("#cloud").click(function () {
                    $(".abstract").hide();
                    $(".search").hide();
                    $(".user").hide();
                    $(".cloud").show();
                });
            });
        </script>
    </head>
    <body>
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Login Successfully');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Please Enter Correct Secret Key');</script>
        <%}
            if (request.getParameter("rmsg") != null) {%>
        <script>alert('File Request Sended to Data Owner');</script>
        <%}
            if (request.getParameter("dmsg") != null) {%>
            <script>alert('Please Enter Correct Decryption Key');</script>
        <%}
        %>
        <div id="main">
            <div id="header">
                <center><h1>A Secure and Dynamic Multi-keyword Ranked Search <br />Scheme over Encrypted Cloud Data</h1></center>
                <div id="menu">
                    <ul>
                        <li class="first"><a href="user.jsp" title="">Home</a></li>
                        <li><a href="#" id="search" title="">File Search</a></li>
                        <li><a href="#" id="fdownload" title="">File Download</a></li>
                        <li><a href="urequest.jsp"  title="">Password</a></li>
                        <li><a href="index.jsp"  title="">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="container"><br />
                <div class="abstract" style="width: 1000px;height:  400px;margin-left: 200px;border-radius: 20px;margin-top: 10px;background-image: url('images/user.jpg')">
                   
                </div>
                <div class="search" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px">
                    <center><h2>Search Engine</h2></center>
                    <center> <form action="search.jsp" method="post">
                            <input type="text" name="fname" style="width: 400px;text-align: center" class="textbox" required=""/><br /><br />
                            <label>Secret Key :</label><input type="text" name="skey"  class="textbox" required=""/><br /><br />
                            <input type="submit" value="Submit" class="button"/>
                        </form><br />
                    </center>
                </div>
                <div class="fdownload" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px">
                    <center><h1>File  Details</h1></center>
                    <center> 
                        <table border="1" style="text-align: center">
                            <tr>
                                <th>File Name</th>
                                <th>Owner Name</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            <%
                                String uname = session.getAttribute("umail").toString();
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = Dbconnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from request where uname='" + uname + "' AND Status='Granted'");
                                    while (rs.next()) {%>
                            <tr>
                                <td><%=rs.getString("fname")%></td>
                                <td><%=rs.getString("owner")%></td>
                                <td><%=rs.getString("status")%></td>
                                <td><a href="daction.jsp?<%=rs.getString("fname")%>,<%=rs.getString("owner")%>"><button class="button">Download</button></a></td>
                            </tr>
                            <% }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table><br />
                    </center>
                </div>
                <div class="cloud" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px">
                    <center><h1 style="display: block;">Cloud Server Login Page</h1></center><hr>
                    <center> <form style="height: 180px;border-bottom-color: transparent" action="caction.jsp" method="post"><br /><br />
                            <label style="font-size: 20px;margin-left: 20px">Username</label>&nbsp;&nbsp;<input type="text" name="user" placeholder="Enter the Email id" class="textbox" required=""/><br /><br />
                            <label style="font-size: 20px;margin-left: 20px">Password</label>&nbsp;&nbsp;&nbsp;<input type="password" name="pass" placeholder="Enter the Password Here" class="textbox" required=""/><br /><br />
                            <input type="hidden" value="cloud" name="saction" />
                            <input type="submit" value="Submit" class="button" style="margin-left: 80px"/>
                            <input type="reset" value="Reset" class="button"/>
                        </form>
                    </center>
                </div>
            </div>
            <div id="footer"><br /><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

