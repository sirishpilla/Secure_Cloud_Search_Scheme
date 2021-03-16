package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Secure_Dynamic_Multi</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\"/>\n");
      out.write("        <script src=\"js/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(function () {\n");
      out.write("                $(\".owner\").hide();\n");
      out.write("                $(\".registration\").hide();\n");
      out.write("                $(\".user\").hide();\n");
      out.write("                $(\".cloud\").hide();\n");
      out.write("                $(\"#owner\").click(function () {\n");
      out.write("                    $(\".abstract\").hide();\n");
      out.write("                    $(\".user\").hide();\n");
      out.write("                    $(\".cloud\").hide();\n");
      out.write("                    $(\".registration\").hide();\n");
      out.write("                    $(\".owner\").show();\n");
      out.write("                });\n");
      out.write("                $(\"#user\").click(function () {\n");
      out.write("                    $(\".abstract\").hide();\n");
      out.write("                    $(\".owner\").hide();\n");
      out.write("                    $(\".cloud\").hide();\n");
      out.write("                    $(\".registration\").hide();\n");
      out.write("                    $(\".user\").show();\n");
      out.write("                });\n");
      out.write("                $(\"#cloud\").click(function () {\n");
      out.write("                    $(\".abstract\").hide();\n");
      out.write("                    $(\".owner\").hide();\n");
      out.write("                    $(\".user\").hide();\n");
      out.write("                    $(\".registration\").hide();\n");
      out.write("                    $(\".cloud\").show();\n");
      out.write("                });\n");
      out.write("                $(\"#registration\").click(function () {\n");
      out.write("                    $(\".abstract\").hide();\n");
      out.write("                    $(\".owner\").hide();\n");
      out.write("                    $(\".user\").hide();\n");
      out.write("                    $(\".cloud\").hide();\n");
      out.write("                    $(\".registration\").show();\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (request.getParameter("msg") != null) {
      out.write("\n");
      out.write("        <script>alert('Registration Successfully \\n Email Id as Your Username');</script>\n");
      out.write("        ");
}
            if (request.getParameter("msgg") != null) {
      out.write("\n");
      out.write("        <script>alert(' Failed ');</script> \n");
      out.write("        ");
}
            if (request.getParameter("omsg") != null) {
      out.write("\n");
      out.write("        <script>alert('Please Enter Correct Password and Secret Code');</script>\n");
      out.write("        ");
}
                if (request.getParameter("umsg") != null) {
      out.write("\n");
      out.write("        <script>alert('Please Enter Correct Password and Secret Code');</script>\n");
      out.write("        ");
}
        
      out.write("\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <center><h1>A Secure and Dynamic Multi-keyword Ranked Search <br />Scheme over Encrypted Cloud Data</h1></center>\n");
      out.write("                <div id=\"menu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"first\"><a href=\"index.jsp\" title=\"\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\" id=\"owner\" title=\"\">Data Owner</a></li>\n");
      out.write("                        <li><a href=\"#\" id=\"user\" title=\"\">User Login</a></li>\n");
      out.write("                        <li><a href=\"#\" id=\"cloud\" title=\"\">Cloud Server</a></li>\n");
      out.write("                        <li><a href=\"#\" id=\"registration\" title=\"\">Registration</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"container\"><br />\n");
      out.write("                <div class=\"abstract\" style=\"width: 1000px;height:  400px;margin-left: 200px;border-radius: 20px;margin-top: 10px;background: white\">\n");
      out.write("                    <h2 style=\"padding:20px\">Abstract :</h2>\n");
      out.write("                    <p style=\"text-align: justify;font-size: 20px;margin-left: 20px;padding-right: 20px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Due to the increasing popularity of cloud computing, more and more data owners are motivated to outsource their data\n");
      out.write("                        to cloud servers for great convenience and reduced cost in data management. However, sensitive data should be encrypted before\n");
      out.write("                        outsourcing for privacy requirements, which obsoletes data utilization like keyword-based document retrieval. In this paper, we present\n");
      out.write("                        a secure multi-keyword ranked search scheme over encrypted cloud data, which simultaneously supports dynamic update operations\n");
      out.write("                        like deletion and insertion of documents. Specifically, the vector space model and the widely-used TF×IDF model are combined in\n");
      out.write("                        the index construction and query generation. We construct a special tree-based index structure and propose a “Greedy Depth-first\n");
      out.write("                        Search” algorithm to provide efficient multi-keyword ranked search. The secure kNN algorithm is utilized to encrypt the index and query\n");
      out.write("                        vectors, and meanwhile ensure accurate relevance score calculation between encrypted index and query vectors. In order to resist\n");
      out.write("                        statistical attacks, phantom terms are added to the index vector for blinding search results . Due to the use of our special tree-based\n");
      out.write("                        index structure, the proposed scheme can achieve sub-linear search time and deal with the deletion and insertion of documents flexibly.\n");
      out.write("                        Extensive experiments are conducted to demonstrate the efficiency of the proposed scheme.</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"owner\" style=\"border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px\">\n");
      out.write("                    <center><h1 style=\"display: block;\">Data Owner Login Page</h1></center><hr>\n");
      out.write("                    <center> <form style=\"height: 180px;border-bottom-color: transparent\" action=\"caction.jsp\" method=\"post\"><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 20px\">Username</label>&nbsp;&nbsp;<input type=\"email\" name=\"user\" placeholder=\"Enter the Email id\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 20px\">Password</label>&nbsp;&nbsp;&nbsp;<input type=\"password\" name=\"pass\" placeholder=\"Enter the Password Here\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 18px\">Secret Key</label>&nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"skey\" placeholder=\"Enter the Secret Key\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <input type=\"hidden\" value=\"owner\" name=\"saction\" />\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" class=\"button\" style=\"margin-left: 80px\"/>\n");
      out.write("                            <input type=\"reset\" value=\"Reset\" class=\"button\"/>\n");
      out.write("                            <h3 style=\"margin-left: 30px\">Click Here</h3><a href =\"#\"  style=\"text-decoration: none;float: right;margin-right: 130px;margin-top: -20px;color: red\">New User</a> \n");
      out.write("                        </form>\n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"user\" style=\"border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px\">\n");
      out.write("                    <center><h1 style=\"display: block;\">User Login Page</h1></center><hr>\n");
      out.write("                    <center> <form style=\"height: 180px;border-bottom-color: transparent\" action=\"caction.jsp\" method=\"post\"><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 20px\">Username</label>&nbsp;&nbsp;<input type=\"email\" name=\"user\" placeholder=\"Enter the Email id\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 20px\">Password</label>&nbsp;&nbsp;&nbsp;<input type=\"password\" name=\"pass\" placeholder=\"Enter the Password Here\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 18px\">Secret Key</label>&nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"skey\" placeholder=\"Enter the Secret Key\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <input type=\"hidden\" value=\"user\" name=\"saction\" />\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" class=\"button\" style=\"margin-left: 80px\"/>\n");
      out.write("                            <input type=\"reset\" value=\"Reset\" class=\"button\"/>\n");
      out.write("                            <h3 style=\"margin-left: 30px\">Click Here</h3><a href =\"#\"  style=\"text-decoration: none;float: right;margin-right: 130px;margin-top: -20px;color: red\">New User</a> \n");
      out.write("                        </form>\n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"cloud\" style=\"border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 300px;margin-left: 400px;margin-top: 60px\">\n");
      out.write("                    <center><h1 style=\"display: block;\">Cloud Server Login Page</h1></center><hr>\n");
      out.write("                    <center> <form style=\"height: 180px;border-bottom-color: transparent\" action=\"caction.jsp\" method=\"post\"><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 20px\">Username</label>&nbsp;&nbsp;<input type=\"text\" name=\"user\" placeholder=\"Enter the Email id\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"font-size: 20px;margin-left: 20px\">Password</label>&nbsp;&nbsp;&nbsp;<input type=\"password\" name=\"pass\" placeholder=\"Enter the Password Here\" class=\"textbox\" required=\"\"/><br /><br />\n");
      out.write("                            <input type=\"hidden\" value=\"cloud\" name=\"saction\" />\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" class=\"button\" style=\"margin-left: 80px\"/>\n");
      out.write("                            <input type=\"reset\" value=\"Reset\" class=\"button\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"registration\" style=\"border: 3px solid white;border-radius: 20px;margin-left: 420px;width: 500px;margin-top: 5px\">\n");
      out.write("                    <center> <form name=\"f2\"  action=\"reg_db.jsp\" method=\"post\">\n");
      out.write("                            <center> <h1>Registration Form</h1></center>\n");
      out.write("                            <label style=\"margin-left: 50px;font-size: 23px\">Name</label><input class=\"textbox\" type=\"text\" placeholder=\"Enter your Name\" name=\"name\" style=\"margin-left: 83px;width: 250px\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"margin-left: 50px;font-size: 23px\">Password</label><input class=\"textbox\" type=\"password\" placeholder=\"Enter your Password\" name=\"pass\" style=\"margin-left: 45px;width: 250px\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"margin-left: 50px;font-size: 23px\">Email</label><input class=\"textbox\" type=\"email\" placeholder=\"Enter your Email\" name=\"email\" style=\"margin-left: 86px;width: 250px\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"margin-left: 50px;font-size: 23px\">Date of Birth</label><input class=\"textbox\" type=\"date\"  name=\"dob\" style=\"margin-left: 18px;width: 250px\" required=\"\"/><br /><br />\n");
      out.write("                            <label style=\"margin-left: 50px;font-size: 23px\">Gender</label>\n");
      out.write("                            <select class=\"textbox\"  name=\"gen\"style=\"margin-left: 60px;width: 250px\" required=\"\">\n");
      out.write("                                <option selected=\"\">Select</option>\n");
      out.write("                                <option value=\"Male\">Male</option>\n");
      out.write("                                <option value=\"Female\">Female</option>\n");
      out.write("                            </select><br /><br /> \n");
      out.write("                            <label style=\"margin-left: 50px;font-size: 23px\">Role</label>\n");
      out.write("                            <select class=\"textbox\"  name=\"role\"style=\"margin-left: 85px;width: 250px\" required=\"\">\n");
      out.write("                                <option selected=\"\">Select</option>\n");
      out.write("                                <option value=\"Owner\">Owner</option>\n");
      out.write("                                <option value=\"User\">User</option>\n");
      out.write("                            </select><br /><br />\n");
      out.write("                            <label style=\"margin-left: 50px;font-size: 23px\">Location</label><input class=\"textbox\" type=\"text\" placeholder=\"Enter your Location\" name=\"loc\" style=\"margin-left: 60px;width: 250px\" required=\"\"/><br /><br />\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" class=\"button\" style=\"margin-left: 110px;margin-top: -10px;width: 100px;color: black\" />\n");
      out.write("                            <input type=\"reset\" value=\"Reset\" class=\"button\" style=\"margin-left: 35px;margin-top: -10px;width: 100px;color: #000\"/><br />\n");
      out.write("                        </form>  \n");
      out.write("                    </center><br />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"footer\"><br /><br />\n");
      out.write("                <center></center>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
