<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="com.secure.kk.action.encryption"%>
<%@page import="com.secure.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    String uname = session.getAttribute("email").toString();
    System.out.println("The Email is "+uname);
    String keyword = request.getParameter("keyword");
    String ndata = request.getParameter("modify");
    String fname = request.getParameter("fname");
    KeyGenerator keyGen = KeyGenerator.getInstance("AES");
    keyGen.init(128);
    SecretKey secretKey = keyGen.generateKey();
    System.out.println("secret key:" + secretKey);
    //converting secretkey to String
    byte[] be = secretKey.getEncoded();//encoding secretkey
    String skey = Base64.encode(be);
    System.out.println("converted secretkey to string:" + skey);
    String endata = new encryption().encrypt(ndata, secretKey);
    System.out.println("The Encrypted Text "+ndata);
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("update files set data='"+endata+"',file_key='"+skey+"'where filename='"+fname+"' AND keyword='"+keyword+"' AND owner='"+uname+"'");
        if (i != 0) {
            response.sendRedirect("owner.jsp?momsg=success");
        }
        else
        {
            response.sendRedirect("owner.jsp?moemsg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
