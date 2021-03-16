<%-- 
    Document   : index
    Created on : Jul 13, 2015, 6:28:36 PM
    Author     : java2
--%>

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
                $(".registration").hide();
                $(".user").hide();
                $(".cloud").hide();
                $("#owner").click(function () {
                    $(".abstract").hide();
                    $(".user").hide();
                    $(".cloud").hide();
                    $(".registration").hide();
                    $(".owner").show();
                });
                $("#user").click(function () {
                    $(".abstract").hide();
                    $(".owner").hide();
                    $(".cloud").hide();
                    $(".registration").hide();
                    $(".user").show();
                });
                $("#cloud").click(function () {
                    $(".abstract").hide();
                    $(".owner").hide();
                    $(".user").hide();
                    $(".registration").hide();
                    $(".cloud").show();
                });
                $("#registration").click(function () {
                    $(".abstract").hide();
                    $(".owner").hide();
                    $(".user").hide();
                    $(".cloud").hide();
                    $(".registration").show();
                });
            });
        </script>
    </head>
    <body>
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Registration Successfully \n Email Id as Your Username');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert(' Failed ');</script> 
        <%}
            if (request.getParameter("omsg") != null) {%>
        <script>alert('Please Enter Correct Password and Secret Code');</script>
        <%}
                if (request.getParameter("umsg") != null) {%>
        <script>alert('Please Enter Correct Password and Secret Code');</script>
        <%}
        %>
        <div id="main">
            <div id="header">
                <center><h1>A Secure and Dynamic Multi-keyword Ranked Search <br />Scheme over Encrypted Cloud Data</h1></center>
                <div id="menu">
                    <ul>
                        <li class="first"><a href="index.jsp" title="">Home</a></li>
                        <li><a href="#" id="owner" title="">Data Owner</a></li>
                        <li><a href="#" id="user" title="">User Login</a></li>
                        <li><a href="#" id="cloud" title="">Cloud Server</a></li>
                        <li><a href="#" id="registration" title="">Registration</a></li>
                    </ul>
                </div>
            </div>
            <div id="container"><br />
                <div class="abstract" style="width: 1000px;height:  400px;margin-left: 200px;border-radius: 20px;margin-top: 10px;background: white">
                    <h2 style="padding:20px">Abstract :</h2>
                    <p style="text-align: justify;font-size: 20px;margin-left: 20px;padding-right: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Due to the increasing popularity of cloud computing, more and more data owners are motivated to outsource their data
                        to cloud servers for great convenience and reduced cost in data management. However, sensitive data should be encrypted before
                        outsourcing for privacy requirements, which obsoletes data utilization like keyword-based document retrieval. In this paper, we present
                        a secure multi-keyword ranked search scheme over encrypted cloud data, which simultaneously supports dynamic update operations
                        like deletion and insertion of documents. Specifically, the vector space model and the widely-used TF×IDF model are combined in
                        the index construction and query generation. We construct a special tree-based index structure and propose a “Greedy Depth-first
                        Search” algorithm to provide efficient multi-keyword ranked search. The secure kNN algorithm is utilized to encrypt the index and query
                        vectors, and meanwhile ensure accurate relevance score calculation between encrypted index and query vectors. In order to resist
                        statistical attacks, phantom terms are added to the index vector for blinding search results . Due to the use of our special tree-based
                        index structure, the proposed scheme can achieve sub-linear search time and deal with the deletion and insertion of documents flexibly.
                        Extensive experiments are conducted to demonstrate the efficiency of the proposed scheme.</p>
                </div>
                <div class="owner" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px">
                    <center><h1 style="display: block;">Data Owner Login Page</h1></center><hr>
                    <center> <form style="height: 180px;border-bottom-color: transparent" action="caction.jsp" method="post"><br /><br />
                            <label style="font-size: 20px;margin-left: 20px">Username</label>&nbsp;&nbsp;<input type="email" name="user" placeholder="Enter the Email id" class="textbox" required=""/><br /><br />
                            <label style="font-size: 20px;margin-left: 20px">Password</label>&nbsp;&nbsp;&nbsp;<input type="password" name="pass" placeholder="Enter the Password Here" class="textbox" required=""/><br /><br />
                            <label style="font-size: 20px;margin-left: 18px">Secret Key</label>&nbsp;&nbsp;&nbsp;<input type="text" name="skey" placeholder="Enter the Secret Key" class="textbox" required=""/><br /><br />
                            <input type="hidden" value="owner" name="saction" />
                            <input type="submit" value="Submit" class="button" style="margin-left: 80px"/>
                            <input type="reset" value="Reset" class="button"/>
                            <h3 style="margin-left: 30px">Click Here</h3><a href ="#"  style="text-decoration: none;float: right;margin-right: 130px;margin-top: -20px;color: red">New User</a> 
                        </form>
                    </center>
                </div>
                <div class="user" style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px">
                    <center><h1 style="display: block;">User Login Page</h1></center><hr>
                    <center> <form style="height: 180px;border-bottom-color: transparent" action="caction.jsp" method="post"><br /><br />
                            <label style="font-size: 20px;margin-left: 20px">Username</label>&nbsp;&nbsp;<input type="email" name="user" placeholder="Enter the Email id" class="textbox" required=""/><br /><br />
                            <label style="font-size: 20px;margin-left: 20px">Password</label>&nbsp;&nbsp;&nbsp;<input type="password" name="pass" placeholder="Enter the Password Here" class="textbox" required=""/><br /><br />
                            <label style="font-size: 20px;margin-left: 18px">Secret Key</label>&nbsp;&nbsp;&nbsp;<input type="text" name="skey" placeholder="Enter the Secret Key" class="textbox" required=""/><br /><br />
                            <input type="hidden" value="user" name="saction" />
                            <input type="submit" value="Submit" class="button" style="margin-left: 80px"/>
                            <input type="reset" value="Reset" class="button"/>
                            <h3 style="margin-left: 30px">Click Here</h3><a href ="#"  style="text-decoration: none;float: right;margin-right: 130px;margin-top: -20px;color: red">New User</a> 
                        </form>
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
                <div class="registration" style="border: 3px solid white;border-radius: 20px;margin-left: 420px;width: 500px;margin-top: 5px">
                    <center> <form name="f2"  action="reg_db.jsp" method="post">
                            <center> <h1>Registration Form</h1></center>
                            <label style="margin-left: 50px;font-size: 23px">Name</label><input class="textbox" type="text" placeholder="Enter your Name" name="name" style="margin-left: 83px;width: 250px" required=""/><br /><br />
                            <label style="margin-left: 50px;font-size: 23px">Password</label><input class="textbox" type="password" placeholder="Enter your Password" name="pass" style="margin-left: 45px;width: 250px" required=""/><br /><br />
                            <label style="margin-left: 50px;font-size: 23px">Email</label><input class="textbox" type="email" placeholder="Enter your Email" name="email" style="margin-left: 86px;width: 250px" required=""/><br /><br />
                            <label style="margin-left: 50px;font-size: 23px">Date of Birth</label><input class="textbox" type="date"  name="dob" style="margin-left: 18px;width: 250px" required=""/><br /><br />
                            <label style="margin-left: 50px;font-size: 23px">Gender</label>
                            <select class="textbox"  name="gen"style="margin-left: 60px;width: 250px" required="">
                                <option selected="">Select</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select><br /><br /> 
                            <label style="margin-left: 50px;font-size: 23px">Role</label>
                            <select class="textbox"  name="role"style="margin-left: 85px;width: 250px" required="">
                                <option selected="">Select</option>
                                <option value="Owner">Owner</option>
                                <option value="User">User</option>
                            </select><br /><br />
                            <label style="margin-left: 50px;font-size: 23px">Location</label><input class="textbox" type="text" placeholder="Enter your Location" name="loc" style="margin-left: 60px;width: 250px" required=""/><br /><br />
                            <input type="submit" value="Submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;color: black" />
                            <input type="reset" value="Reset" class="button" style="margin-left: 35px;margin-top: -10px;width: 100px;color: #000"/><br />
                        </form>  
                    </center><br />
                </div>
            </div>
            <div id="footer"><br /><br />
                <center></center>
            </div>
        </div>
    </body>
</html>

