/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package like;

import ekalavya.helper.EkShikshaDBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Tushar
 */
public class likes {
    
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public likes() {};
    
    public int getLikes(String id){
        
        int ret = 0;
        try{
            
            con = EkShikshaDBConnection.getConnection();
            String stm = "SELECT likes FROM liketable WHERE id=?";
            ps = con.prepareStatement(stm);
            ps.setString(1, id);
            rs = ps.executeQuery();
            
            if(!rs.next())
            {
                stm = "INSERT INTO liketable VALUES(?, 0)";
                ps = con.prepareStatement(stm);
                ps.setString(1, id);
                ps.executeUpdate();
                stm = "SELECT likes FROM liketable WHERE id=?";
                ps = con.prepareStatement(stm);
                ps.setString(1, id);
                rs = ps.executeQuery();
                rs.next();
            }
            
            do
            {
                ret = rs.getInt("likes");
            }while(rs.next());
            
        }
        
        catch (SQLException e) {
            
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return 0;
        }
        finally {
            
            if (rs != null) {
                EkShikshaDBConnection.closeResultSet(rs);
            }
            if (ps != null) {
                EkShikshaDBConnection.closeStatement(ps);
            }
            if (con != null) {
                EkShikshaDBConnection.closeDBConnection(con);
            }
            return ret;
        }
        
    }
    
    public void storeLikes(String id){
        
        try{
            
            con = EkShikshaDBConnection.getConnection();
            String stm = "UPDATE liketable SET likes=likes+1 WHERE id=?";
            ps = con.prepareStatement(stm);
            ps.setString(1, id);
            ps.executeUpdate();
        }
        
        catch (SQLException e) {
            
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
        }
        finally {
            
            if (rs != null) {
                EkShikshaDBConnection.closeResultSet(rs);
            }
            if (ps != null) {
                EkShikshaDBConnection.closePStatement(ps);
            }
            if (con != null) {
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
    }
}
