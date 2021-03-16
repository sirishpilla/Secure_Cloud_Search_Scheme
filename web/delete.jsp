<%@page import="com.secure.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String[] data = request.getQueryString().split(",");
    if (data != null) {
        try {
            Connection con2 = null;
            Statement st2 = null;
            con2 = Dbconnection.getConnection();
            st2 = con2.createStatement();
            int i = st2.executeUpdate("delete from files where owner='" + data[2] + "' AND keyword='" + data[1] + "' AND filename='" + data[0] + "'");
            if (i != 0) {
                response.sendRedirect("owner.jsp?msg2=success");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

%>