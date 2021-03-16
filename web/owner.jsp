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
        <script>
            $(function () {
                $(".fupload").hide();
                $(".registration").hide();
                $(".fdetails").hide();
                $(".fdynamic").hide();
                $("#fupload").click(function () {
                    $(".home").hide();
                    $(".fdetails").hide();
                    $(".fdynamic").hide();
                    $(".registration").hide();
                    $(".fupload").show();
                });
                $("#fdetails").click(function () {
                    $(".home").hide();
                    $(".fupload").hide();
                    $(".fdynamic").hide();
                    $(".registration").hide();
                    $(".fdetails").show();
                });
                $("#fdynamic").click(function () {
                    $(".home").hide();
                    $(".fupload").hide();
                    $(".fdetails").hide();
                    $(".registration").hide();
                    $(".fdynamic").show();
                });
                $("#registration").click(function () {
                    $(".home").hide();
                    $(".fupload").hide();
                    $(".fdetails").hide();
                    $(".fdynamic").hide();
                    $(".registration").show();
                });
            });
        </script>
    </head>
    <body>
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Login Successfully');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('File Upload Successfully');</script>  
        <%}
            if (request.getParameter("msg2") != null) {
        %>   
        <script>alert('File Deleted Successfully');</script>
        <%}
            if (request.getParameter("momsg") != null) {%>
        <script>alert('Modified Successfully');</script>
        <%}
                if (request.getParameter("moemsg") != null) {%>
        <script>alert('Modified Failed');</script>
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
                        <li><a href="fresponse.jsp"  title="">Request File</a></li>
                        <li><a href="prequest.jsp" id="cloud" title="">Password</a></li>
                        <li><a href="index.jsp"  title="">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="container"><br />
                <div class="home" style="width: 1000px;height:  400px;background-image: url('images/owner.jpg');margin-left: 200px;border-radius: 20px;margin-top: 10px;">
                    
                </div>
                <div class="fupload" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px">
                    <center><h1 style="display: block;">File Upload Here...!</h1></center><hr>
                    <center> 
                        <form name="f2" action="Upload" method="post" enctype="multipart/form-data" style="margin-right:  50px">
                            <label style="font-size: 23px">File Name</label><input class="textbox" type="text" placeholder="Enter your File Name" name="fname" style="margin-left: 83px;width: 250px" required=""/><br /><br />
                            <label style="font-size: 23px">File Keyword </label><input class="textbox" type="text" placeholder="Enter your Keyword" name="fkey" style="margin-left: 45px;width: 250px" required=""/><br /><br />
                            <label style="font-size: 23px">File Browse</label> <input  type="file"  name="file"  style="margin-left: 60px;width: 250px" required=""/><br /><br /><br />
                            <input type="submit" value="Submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
                            <input type="reset" value="Reset" class="button" style="margin-left: 35px;margin-top: -10px;width: 100px;"/>
                        </form> 
                    </center>
                </div>
                <div class="fdetails" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 700px;height: 300px;margin-left: 400px;margin-top: 60px">
                    <center><h1 style="display: block;">File Details</h1></center><hr>
                    <center>
                        <table border="1" style="text-align: center">
                            <tr>
                                <th>File Name</th>
                                <th>Keyword</th>
                                <th>File Type</th>
                                <th>Upload Date</th>
                                <th>File Size</th>
                                <th>Rank</th>
                                <th>Download</th>
                                <th>Edit Action</th>
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
                                        rs = st.executeQuery("select * from files where owner ='" + uname + "'");
                                        while (rs.next()) {%>
                                <td><%=rs.getString("filename")%></td>
                                <td><%=rs.getString("keyword")%></td>
                                <td><%=rs.getString("filetype")%></td>
                                <td><%=rs.getString("CDate")%></td>
                                <td><%=rs.getString("Size") + "Bytes"%></td>
                                <td><%=rs.getString("frank")%></td>
                                <td><a href="download?<%=rs.getString("filename")%>,<%=uname%>">Download</a></td>
                                <td><a href="modify.jsp?<%=rs.getString("filename")%>,<%=uname%>">Modify</a></td>
                                <td><a href="delete.jsp?<%=rs.getString("filename")%>,<%=rs.getString("keyword")%>,<%=uname%>">Delete</a></td>
                            </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table>
                    </center><br />
                </div>
            </div>
            <div id="footer"><br /><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

