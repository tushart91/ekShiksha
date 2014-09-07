
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package rating;


import ekalavya.helper.EkShikshaDBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Tushar
 */
public class rate {
    
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement ps = null;
    
    public rate() {};
    
    /*
     * List of Functions
     * double getRating(int id)
     * int getTotalVotes(int id)
     * void storeRating(int id, int rating)
     */

    
    /*
     * This Function is used to get the rating in double format for the given
     * id. The function returns double type value.
     * Note: id must be passed as parameter
     */
    
    public float getRating(String id){
        
        int total_votes = 1;
        int total_value = -1;
        float ret = -1.0f;
        try{
            
            con = EkShikshaDBConnection.getConnection();
            String stm = "SELECT total_votes,total_value FROM ratings WHERE id=?";
            ps = con.prepareStatement(stm);
            ps.setString(1, id); 
            rs = ps.executeQuery();
            
            if(!rs.next())
            {
                stm = "INSERT INTO ratings VALUES(?, 0,0)";
                ps = con.prepareStatement(stm);
                ps.setString(1, id);
                ps.executeUpdate();
                stm = "SELECT total_votes,total_value FROM ratings WHERE id=?";
                ps = con.prepareStatement(stm);
                ps.setString(1, id); 
                rs = ps.executeQuery();
                rs.next();
            }
            
            do
            {
                total_votes = rs.getInt("total_votes");
                total_value = rs.getInt("total_value");
            }while(rs.next());
            
            if(total_votes==0)
                ret = 0f;
            else
                ret = (float)total_value/total_votes;
            
        }
        
        catch (SQLException e) {
            
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return -1.0f;
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
            return ret;
        }
        
    }
    
    /*
     * This function is used to get the total votes that for the given
     * id. The function returns int type value.
     * Note: id must be passed as parameter
     */
    
    public int getTotalVotes(String id){
        
        int total_votes = -1;
        try{
            
            con = EkShikshaDBConnection.getConnection();
            String stm = "SELECT total_votes FROM ratings WHERE id=?";
            ps = con.prepareStatement(stm);
            ps.setString(1, id); 
            rs = ps.executeQuery();
            while(rs.next())
            {
                total_votes = rs.getInt("total_votes");
            }
        }
        
        catch (SQLException e) {
            
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return -1;
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
            return total_votes;
        }
        
    }
    
    /*
     * This function stores the rating from 1-5 for the specified id
     * Note: Two parameters have to be passed - one for id and the other
     * for rating.
     */
    
    public void storeRating(String id, int rating){
        
        try{
            
            con = EkShikshaDBConnection.getConnection();
            String stm = "UPDATE ratings SET total_value=total_value+?"+
                    " WHERE id=?; "+
                    "UPDATE ratings SET total_votes=total_votes+1"+
                    " WHERE id=?";
            ps = con.prepareStatement(stm);
            ps.setInt(1, rating);
            ps.setString(2, id);
            ps.setString(3, id);
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
