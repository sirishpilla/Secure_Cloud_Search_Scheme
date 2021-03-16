<%-- 
    Document   : index
    Created on : Jul 13, 2015, 6:28:36 PM
    Author     : java2
--%>

<%@page import="com.secure.kk.action.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
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
                <div class="fupload" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 800px;height: 380px;margin-left: 400px;margin-top: 60px">
                    <center><h1 style="display: block;">File Upload Here...!</h1></center><hr>
                    <center> 
                        <%

                            String[] filedetails = request.getQueryString().split(",");
                            String fname = null, fkey = null,keyword=null;
                            InputStream is = null;

                            Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from files where filename='" + filedetails[0] + "' AND owner='" + filedetails[1] + "'");
                            if (rt.next()) {
                                fname = rt.getString("filename");
                                fkey = rt.getString("file_key");
                                keyword =rt.getString("keyword");
                                is = (InputStream) rt.getAsciiStream("data");
                            } else {
                                out.println("error while retreiving data");
                            }
                            BufferedReader br = new BufferedReader(new InputStreamReader(is));
                            String temp = null;
                            StringBuffer sb = new StringBuffer();
                            while ((temp = br.readLine()) != null) {
                                sb.append(temp + "\n");
                            }
                            String content = new decryption().decrypt(sb.toString(), fkey);
                        %>
                        <form name="f2" action="modifyaction.jsp" method="post" style="margin-right:  50px">
                            <label style="font-size: 23px">File Name</label><input class="textbox" type="text" value="<%=fname%>" readonly="" name="fname" style="margin-left: 58px;width: 250px" /><br /><br />
                            <label style="font-size: 23px;margin-left: -274px">File Content : </label><br /><textarea cols="40" rows="10" name="modify" value="<%=content%>" style="margin-left: 200px"><%=content%></textarea><br /><br />
                            <input type="hidden" value="<%=keyword%>" name="keyword" />
                            <input type="submit" value="Update" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
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

