To verify the database connection established via the DBConnect class in the com.db package, we need to import two classes in index.jsp:
com.db.DBConnect — our custom class that provides the connection(<%@page import="com.DB.DBConnect"%>)
java.sql.Connection — the JDBC interface representing the connection(<%@page import="java.sql.Connection"%>)
After importing these classes, we can declare and initialize the connection within a JSP scriptlet (typically under the navbar or relevant section) using:
<%
    Connection conn = DBConnect.getConn();
    out.println(conn);
%>
Connection conn declares the connection object
DBConnect.getConn() returns the live database connection
out.println(conn) prints the connection object (its reference) to confirm whether the connection was successfully established
Finally, save index.jsp and reload it in the browser. If a reference like com.mysql.cj.jdbc.ConnectionImpl@... appears, the connection is successfully built and ready for use.
