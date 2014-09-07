/*
 * EkShikshaDBConnection.java
 *
 * Created on Jan 24, 2011, 11:29 AM
 */

package ekalavya.helper;

/**
 *
 * @author  ravi
 */

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.DriverManager;
public class EkShikshaDBConnection {



    /** Creates a new instance of oscarDBConnectionBean */
    public EkShikshaDBConnection() { }

    public synchronized static Connection getDBConnection()
    {
        Connection con = null;
        try {
            InitialContext cxt = new InitialContext();
            if (cxt == null ) {
               throw new Exception("No context available!");
            }
            DataSource ds = (DataSource) cxt.lookup( "java:/comp/env/jdbc/ekshiksha" );
            if ( ds == null ) {
                throw new Exception("Data source not found!");
            }
            con = ds.getConnection();
        }catch(Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public synchronized static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("org.postgresql.Driver");
        } catch(ClassNotFoundException e) {
            System.out.println("Could not load driver class "+e);
        }
        try {
            //con = DriverManager.getConnection("jdbc:postgresql://10.105.22.2:5432/ekshiksha","ekshiksha","ekshiksha123");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/rate","postgres","root");
        } catch (SQLException e) {
            System.out.println("Could not get connection "+e);
        }
        return con;
    }
    public synchronized static void closeDBConnection(Connection con)
    {
        if(con != null) {
            try{
                con.close();
                con = null;
            }
            catch (SQLException e) {
                System.out.println("Could not close Connection "+e);
            }
        }
    }

    public synchronized static void closeStatement(Statement stmt) {
        if(stmt != null) {
            try{
                stmt.close();
                stmt = null;
            }
            catch (SQLException e) {
                System.out.println("Could not close Statement "+e);
            }
        }
    }

    public synchronized static void closePStatement(PreparedStatement pstmt) {
        if(pstmt != null) {
            try{
                pstmt.close();
                pstmt = null;
            }
            catch (SQLException e) {
                System.out.println("Could not close Prepared Statement "+e);
            }
        }
    }

    public synchronized static void closeResultSet(ResultSet res) {
        if(res != null) {
            try{
                res.close();
                res = null;
            }
            catch (SQLException e) {
                System.out.println("Could not close ResultSet "+e);
            }
        }
    }
    public static synchronized boolean isClosed(Connection con) {
        boolean isClosed = false;
        try {
            if(con == null || con.isClosed()) {
                isClosed = true;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return isClosed;
    }
}
