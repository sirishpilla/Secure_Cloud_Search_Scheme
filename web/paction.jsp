<%@page import="com.secure.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String uname = session.getAttribute("email").toString();
    String old = request.getParameter("opass");
    String pnew = request.getParameter("npass");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from reg where Email='" + uname + "' AND Pass='" + old + "'");
        if (rs.next()) {
            st.executeUpdate("update reg set Pass='" + pnew + "' where Email='" + uname + "' AND Pass='" + old + "'");
            response.sendRedirect("prequest.jsp?msg=success");
        } else {
            response.sendRedirect("prequest.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>