<%-- 
    Document   : reg_db
    Created on : Jul 13, 2015, 5:37:01 PM
    Author     : java2
--%>

<%@page import="com.secure.kk.action.Mail"%>
<%@page import="com.secure.kk.action.Dbconnection"%>
<%@page import="java.util.Random"%>
<%@page import="sun.security.pkcs11.Secmod.DbMode"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gen = request.getParameter("gen");
    String role = request.getParameter("role");
    String loc = request.getParameter("loc");
    Random r = new Random();
    int ii = r.nextInt(100000 - 5000) + 5000;
    String k = ii + "";
    String msg ="Name : "+name+"\n\nKey   : "+k+"\n\nRole   : "+role;
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("insert into reg (Name, Pass, Email, DOB, Gender, role, Loc, skey) values ('" + name + "','" + pass + "','" + email + "','" + dob + "','" + gen + "','" + role + "','" + loc + "','"+k+"')");
        if (i != 0) {
            Mail m = new Mail();
            m.secretMail(msg, name, email);
            response.sendRedirect("index.jsp?msg=success");
        } else {
            response.sendRedirect("index.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>