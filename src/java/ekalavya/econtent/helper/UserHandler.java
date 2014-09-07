

package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import java.sql.*;
import ekalavya.econtent.bean.User;
import ekalavya.helper.EkShikshaDBConnection;
import ekalavya.econtent.bean.Feedback;
import ekalavya.econtent.bean.PrivacySetting;
import java.util.ArrayList;
import java.sql.Timestamp;
import java.util.Calendar;

public class UserHandler {
    //declaring class variables
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet res;
    private Statement stmt;
    
    //declaring constructor of the class
    public UserHandler() {
        //con = EkShikshaDBConnection.getDBConnection();
    }

    public UserHandler(Connection con) {
        this.con = con;
    }
    /**
     * isEmailExist() function is used to check whether the given email id is exist in database or not.
     * When a user register himself then this function checks that the email id given by the user is
     * registered with some user id or not.
     * If the email is registered with another user then it returns true otherwise false.
     *
     @param (String) Email id of the user who wants to register
     *
     @return (boolean) true or false depending upon the existence of the email id in database.
     *
     */
    public boolean isEmailExist(String email) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select email from ecusers where email=?");
                pstmt.setString(1, email);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        
        return result;
    }

    /**
     * isUserIdExist() function is used to check whether the given user id is available or not.
     * When a user register himself then this function checks that the user id given by the user is
     * registered with some other user or not.
     * If the user id is registered with another user then it returns true otherwise false.
     *
     @param (String) User id of the user who wants to register
     *
     @return (boolean) true or false depending upon the existence of the user id in database table ecusers.
     *
     */
    public boolean isUserIdExist(String userId) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select email from ecusers where userid=lower(?)");
                pstmt.setString(1, userId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * createUser() function is used to create a new user for ekShiksha
     * This function takes all the necessary parameter and insert a new row in database tables.
     * This function converts the plain password text to md5 format(encrypted) and then stores it in database.
     *
     @param userId userId of a user
     *
     @param password password of a user
     *
     @param displayName display name of a user
     *
     @param role  role of a user
     *
     @param langId language id of a user
     *
     @param topicId  topic id of a user
     *
     @param qualification qualification of a user
     *
     @param email email id of a user
     *
     @param mobile mobile number of a user
     *
     @param profile profile of a user
     *
     @param firstName  first name of a user
     *
     @param lastName last name of a user
     *
     */
    public boolean createUser(String userId, String password, String displayName, String role, int langId, int topicId, String qualification, String email, long mobile, String profile, String firstName, String lastName) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("insert into ecusers(userid,role,lang_id,topic_id,disp_name,qualification,profile,email,mobile,firstname,lastname) values(lower(?),?,?,?,?,?,?,?,?,?,?)");
                pstmt.setString(1, userId);
                pstmt.setString(2, role);
                pstmt.setInt(3, langId);
                pstmt.setInt(4, topicId);
                pstmt.setString(5, displayName);
                pstmt.setString(6, qualification);
                pstmt.setString(7, profile);
                pstmt.setString(8,email);
                pstmt.setLong(9, mobile);
                pstmt.setString(10, firstName);
                pstmt.setString(11, lastName);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    pstmt = con.prepareStatement("insert into eclogin(userid,password,last_login) values(lower(?),md5(?),CURRENT_TIMESTAMP)");
                    pstmt.setString(1, userId);
                    pstmt.setString(2, password);
                    rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated == 1) {
                        result = true;
                    } else {
                        pstmt = con.prepareStatement("delete from ecusers where userid=lower(?)");
                        pstmt.setString(1, userId);
                        pstmt.executeUpdate();
                        result = false;
                    }
                }

            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * createUser() function is used to create a new user for ekShiksha
     * This function takes all the necessary parameter and insert a new row in database tables.
     * This function converts the plain password text to md5 format(encrypted) and then stores it in database.
     *
     @param userId userId of a user
     *
     @param password password of a user
     *
     @param displayName display name of a user
     *
     @param role  role of a user
     *
     @param qualification qualification of a user
     *
     @param email email id of a user
     *
     @param mobile mobile number of a user
     *
     @param profile profile of a user
     *
     @param firstName  first name of a user
     *
     @param lastName last name of a user
     */
    public boolean createUser(String userId, String password, String displayName, String role, String qualification, String email, long mobile, String profile, String firstName, String lastName) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("insert into ecusers(userid,role,disp_name,qualification,profile,email,mobile,firstname,lastname) values(lower(?),?,?,?,?,?,?,?,?)");
                pstmt.setString(1, userId);
                pstmt.setString(2, role);
                pstmt.setString(3, displayName);
                pstmt.setString(4, qualification);
                pstmt.setString(5, profile);
                pstmt.setString(6,email);
                pstmt.setLong(7, mobile);
                pstmt.setString(8, firstName);
                pstmt.setString(9, lastName);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    pstmt = con.prepareStatement("insert into eclogin(userid,password,last_login) values(lower(?),md5(?),CURRENT_TIMESTAMP)");
                    pstmt.setString(1, userId);
                    pstmt.setString(2, password);
                    rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated == 1) {
                        result = true;
                    } else {
                        pstmt = con.prepareStatement("delete from ecusers where userid=lower(?)");
                        pstmt.setString(1, userId);
                        pstmt.executeUpdate();
                        result = false;
                    }
                }

            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * This function is used for login to ekShiksha application
     * This function returns the role of the user, who is logging in.
     * This function takes two parameter userId and password.
     *
     @param userId userId userid of the user who wants to login
     *
     @param password password respective password for the userid of the user who wants to login
     *
     @return String role of the user who wants to login.
     *
     */
    public String login(String userId, String password) {
        String role = "";
        String query = "select role from ecusers inner join eclogin on ecusers.userid=eclogin.userid where eclogin.userid=lower(?) and eclogin.password=md5(?) and eclogin.verified=true;";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, userId.toLowerCase());
                pstmt.setString(2, password);
                res = pstmt.executeQuery();
                if(res.next()) {
                    role = res.getString("role");
                }
                if(role != null && role.length()>1) {
                    pstmt = con.prepareStatement("update eclogin set last_login=CURRENT_TIMESTAMP where userid=lower(?)");
                    pstmt.setString(1, userId);
                    pstmt.executeUpdate();
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return role;
    }

    /**
     * This function is used for get Display name of the user to show.
     * This function returns the display name of the user, who is logging in.
     * This function takes a parameter userId.
     *
     @param userId userid of the user who is logged in.
     *
     @return String display name of the user who is logged in.
     *
     */
    public String getDisplayName(String userId) {
        String displayName = "";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select disp_name from ecusers where userid=lower(?)");
                pstmt.setString(1, userId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    displayName = res.getString("disp_name");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return displayName;
    }

    /**
     * This function is used for get email id of the user.
     * This function returns the email id of the user, who is logging in.
     * This function takes a parameter userId.
     *
     @param userId userid of the user who is logged in.
     *
     @return String email id of the user who is logged in.
     *
     */
    public String getUserEmail(String userId) {
        String email = "";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select email from ecusers where userid=lower(?)");
                pstmt.setString(1, userId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    email = res.getString("email");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return email;
    }

    /**
     * This function is used to get the base language Id of the user
     * This function returns the language id of the user, who is logging in.
     * This function takes a parameter userId.
     *
     @param userId userid of the user who is logged in.
     *
     @return int language id of the user who is logged in.
     *
     */
    public int getUserLanguage(String uid) {
        int langId = 1;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select lang_id from ecusers where userid=lower(?)");
                pstmt.setString(1, uid);
                res = pstmt.executeQuery();
                while(res.next()) {
                    langId = res.getInt("lang_id");
                }

            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return langId;
    }

    /**
     * This function is used to get the base topic Id of the user
     * This function returns the topic id of the user, who is logging in.
     * This function takes a parameter userId.
     *
     @param userId userid of the user who is logged in.
     *
     @return int topic id of the user who is logged in.
     *
     */
    public int getUserTopic(String uid) {
        int langId = 1;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select topic_id from ecusers where userid=lower(?)");
                pstmt.setString(1, uid);
                res = pstmt.executeQuery();
                while(res.next()) {
                    langId = res.getInt("topic_id");
                }

            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return langId;
    }

    /**
     * getUserDetails() function gets all the details of a particular user based on his/her email address.
     * This function is used when user forget their password. This function returns the user
     * information after changing the password of the user.
     *
     @param email email of the user whose details is needed.
     * 
     @return User It returns an object of User class with user information.
     * 
     @see User
     */
    public User getUserDetails(String email) {
        User user = null;
        RandomString random = new RandomString();
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select ecusers.disp_name,ecusers.userid,ecusers.email from ecusers where ecusers.email=?;");
                pstmt.setString(1, email);
                res = pstmt.executeQuery();
                if(res.next()) {
                    user = new User();
                    user.setDisplayName(res.getString("disp_name"));
                    user.setUserId(res.getString("userid"));
                    user.setEmail(res.getString("email"));
                    String password = random.nextString();
                    user.setPassword(password);
                    pstmt = con.prepareStatement("update eclogin set password=md5(?) where userid=lower(?)");
                    pstmt.setString(1, password);
                    pstmt.setString(2, res.getString("userid"));
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated != 1) {
                        user = null;
                    }
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return user;
    }

    /**
     * getUserInformation() function gets all the details of a particular user based on his/her email address.
     * 
     @param email email of the user whose details is needed.
     * 
     @return User It returns an object of User class with user information.
     *
     @see User
     */
    public User getUserInformation(String email) {
        User user = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select ecusers.disp_name,ecusers.userid,ecusers.email,ecusers.qualification,ecusers.profile,ecusers.mobile,ecusers.firstname,ecusers.lastname from ecusers where ecusers.email=?;");
                pstmt.setString(1, email);
                res = pstmt.executeQuery();
                if(res.next()) {
                    user = new User();
                    user.setDisplayName(res.getString("disp_name"));
                    user.setUserId(res.getString("userid"));
                    user.setEmail(res.getString("email"));
                    user.setQualification(res.getString("qualification"));
                    user.setProfile(res.getString("profile"));
                    user.setMobile(res.getString("mobile"));
                    user.setFirstName(res.getString("firstname"));
                    user.setLastName(res.getString("lastname"));
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return user;
    }

    /**
     * updateUserLanguage() functions updates the language of a user according to the userid given
     * It update ecusers table in the database.
     *
     @param userId userid of a user
     *
     @param langId language id of a user
     *
     @return boolean It return true if updation is successful otherwise false.
     *
     */
    public boolean updateUserLanguage(String userid, int langId) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update ecusers set lang_id=? where userid=lower(?)");
                pstmt.setInt(1, langId);
                pstmt.setString(2, userid);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated==1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * updateUserTopic() functions updates the topic of a user according to the userid given
     * It update ecusers table in the database.
     *
     @param userId user id of a user
     *
     @param topicid topic id of a user
     *
     @return boolean It return true if updation is successful otherwise false.
     *
     */
    public boolean updateUserTopic(String userid, int topicId) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update ecusers set topic_id=? where userid=lower(?)");
                pstmt.setInt(1, topicId);
                pstmt.setString(2, userid);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated==1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * deleteUser() function deletes the user from the database. It matches email and userid and
     * then delete that particular user from ecusers and eclogin table.
     *
     @param email email id of the user
     *
     @param userId user id of the user
     *
     @return boolean It returns true if user is deleted otherwise false.
     *
     */
    public boolean deleteUser(String email,String userId) {
        boolean result = false;
        User user = getUserInformation(email);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                if(user != null && user.getUserId().equals(userId)) {
                    pstmt = con.prepareStatement("delete from eclogin where userid=lower(?)");
                    pstmt.setString(1, userId);
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated==1) {
                        pstmt = con.prepareStatement("delete from ecusers where email=? and userid=lower(?)");
                        pstmt.setString(1, email);
                        pstmt.setString(2, userId);
                        rowUpdated = pstmt.executeUpdate();
                        if(rowUpdated == 1) {
                            result = true;
                        }
                    }
                }

            }catch(SQLException sqle) {

            }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * searchUser() function searches the user from the database. It matches email and userid and
     * then search that particular user from ecusers table.
     *
     @param email email id of the user
     *
     @param userId user id of the user
     *
     @return boolean It returns true if user is found otherwise false.
     *
     */
    public boolean searchUser(String email,String userId) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select userid from ecusers where email=? and userid=lower(?)");
                pstmt.setString(1, email);
                pstmt.setString(2, userId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {

            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * This function is used for get userid of the user.
     * This function takes a parameter email.
     *
     @param email email id of the user.
     *
     @return String It return userid if user exist otherwise blank string.
     *
     */
    public String getUserId(String email) {
        String userId = "";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select userid from ecusers where email=?");
                pstmt.setString(1, email);
                res = pstmt.executeQuery();
                if(res.next()) {
                    userId  = res.getString("userid");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return userId ;
    }

    /**
     * confirmUser() functions updates the status of a user according to the email given
     * It update eclogin table in the database.
     *
     @param email email id of the user
     *
     @return boolean It return true if updation is successful otherwise false.
     *
     */
    public boolean confirmUser(String email) {
        boolean result = false;
        String userId = getUserId(email);
        boolean status = isUserConfirmed(userId);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                if(!status) {
                    pstmt = con.prepareStatement("update eclogin set verified=true where userid=lower(?)");
                    pstmt.setString(1,userId);
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated==1) {
                        result = true;
                    }
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * This function is used for get status of the user.
     * It searches the eclogin table and find the status of the user
     * This function takes a parameter userId.
     *
     @param userId user id of the user.
     *
     @return boolean It returns the status of the user.
     *
     */
    public boolean isUserConfirmed(String userId) {
        boolean status = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select verified from eclogin where userid=lower(?)");
                pstmt.setString(1, userId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    status = res.getBoolean("verified");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return status;
    }

    /**
     * getUser() function gets all the details of a particular user based on his/her userid.
     *
     @param userId user id of the user whose details is needed.
     *
     @return It returns an object of User class with user information.
     *
     @see User
     */
    public User getUser(String userId) {
        User user = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select userid,role,lang_id,topic_id,disp_name,qualification,profile,email,mobile,firstname,lastname from ecusers where userid=lower(?);");
                pstmt.setString(1, userId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    user = new User();
                    user.setUserId(res.getString("userid"));
                    user.setRole(res.getString("role"));
                    user.setLangId(res.getInt("lang_id"));
                    user.setTopicId(res.getInt("topic_id"));
                    user.setDisplayName(res.getString("disp_name"));
                    user.setQualification(res.getString("qualification"));
                    user.setProfile(res.getString("profile"));
                    user.setEmail(res.getString("email"));
                    user.setMobile(res.getString("mobile"));
                    user.setFirstName(res.getString("firstname"));
                    user.setLastName(res.getString("lastname"));
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return user;
    }

    /**
     * saveFeedback() methods save the feedback provided by users into feedback table of ekshiksha database
     *
     @param Feedback Object of Feedback class as a parameter
     * 
     @return boolean If feedback saved successfully in database, it returns true otherwise false.
     *
     @see Feedback
     */
    public boolean saveFeedback(Feedback feedback) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("insert into feedback(topic,name,email,userid,url,comment,client_ip,time) values(?,?,?,?,?,?,?,CURRENT_TIMESTAMP)");
                pstmt.setString(1, feedback.getTopic());
                pstmt.setString(2, feedback.getName());
                pstmt.setString(3, feedback.getEmail());
                pstmt.setString(4, feedback.getUserId());
                pstmt.setString(5, feedback.getPageUrl());
                pstmt.setString(6, feedback.getComment());
                pstmt.setString(7, feedback.getIpAddress());
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * getFeedback() method fetches all the feedback with status provide by parameter (true means read or false means
     * unread feedback)
     *
     @param status Status of the feedback
     *
     @return ArrayList It returns a arraylist of Feedback class object if found otherwise empty arraylist.
     *
     */
    public ArrayList getFeedbacks() {
        ArrayList list = new ArrayList();
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select * from feedback order by time desc");
                res = pstmt.executeQuery();
                while(res.next()) {
                    Feedback feedback = new Feedback();
                    feedback.setId(res.getInt("fid"));
                    feedback.setTopic(res.getString("topic"));
                    feedback.setName(res.getString("name"));
                    feedback.setEmail(res.getString("email"));
                    feedback.setUserId(res.getString("userid"));
                    feedback.setComment(res.getString("comment"));
                    feedback.setIpAddress(res.getString("client_ip"));
                    feedback.setPageUrl(res.getString("url"));
                    feedback.setStatus(res.getBoolean("status"));
                    Timestamp timestamp = res.getTimestamp("time");
                    Date time = new Date(timestamp.getTime());
                    feedback.setTime(time);
                    list.add(feedback);
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return list;
    }

    /**
     * getFeedback() method fetches all the feedback with status provide by parameter (true means read or false means
     * unread feedback)
     *
     @param status Status of the feedback
     *
     @return ArrayList It returns a arraylist of Feedback class object if found otherwise empty arraylist.
     *
     */
    public ArrayList getFeedback(boolean status) {
        ArrayList list = new ArrayList();
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select * from feedback where status=?");
                pstmt.setBoolean(1, status);
                res = pstmt.executeQuery();
                while(res.next()) {
                    Feedback feedback = new Feedback();
                    feedback.setId(res.getInt("fid"));
                    feedback.setTopic(res.getString("topic"));
                    feedback.setName(res.getString("name"));
                    feedback.setEmail(res.getString("email"));
                    feedback.setUserId(res.getString("userid"));
                    feedback.setComment(res.getString("comment"));
                    feedback.setIpAddress(res.getString("client_ip"));
                    feedback.setPageUrl(res.getString("url"));
                    feedback.setStatus(res.getBoolean("status"));
                    Timestamp timestamp = res.getTimestamp("time");
                    Date time = new Date(timestamp.getTime());
                    feedback.setTime(time);
                    list.add(feedback);
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return list;
    }

    /**
     * updateUserProfile() function updates profile of a user in ecusers table of database.
     *
     @param user object of User class
     *
     @return boolean If the updation is successfull it returns true otherwise false.
     *
     */
    public boolean updateUserProfile(User user) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update ecusers set firstname=?,lastname=?,disp_name=?,email=?,qualification=?,profile=? where userid=lower(?)");
                pstmt.setString(1, user.getFirstName());
                pstmt.setString(2, user.getLastName());
                pstmt.setString(3, user.getDisplayName());
                pstmt.setString(4, user.getEmail());
                pstmt.setString(5, user.getQualification());
                pstmt.setString(6, user.getProfile());
                pstmt.setString(7, user.getUserId());
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * updatePassword() method update password of a user
     *
     @param userid user id of the user
     * 
     @param password password of the user
     *
     @return boolean it return boolean if updation is successful otherwise false.
     *
     */
    public boolean updatePassword(String userid, String password) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update eclogin set password=md5(?) where userid=lower(?)");
                pstmt.setString(1, password);
                pstmt.setString(2, userid);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * checkPassword() method checks the current password of a particular user based on his/her userid
     * 
     @param userid user id of the user.
     *
     @param password password of the user.
     *
     @return boolean if password is correctt it return true otherwise false.
     *
     */
    public boolean checkPassword(String userid, String password) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select userid from eclogin where userid=(?) and password=md5(?)");
                pstmt.setString(1, userid);
                pstmt.setString(2, password);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

     /**
     * isEmailExist() function is used to check whether the given email id is exist except the current user in database or not.
     * When a user updates his/her profile then this function checks that the email id given by the user is
     * registered with some user id or not except himself.
     * If the email is registered with another user then it returns true otherwise false.
     *
     @param email email id of the user
     * 
     @parm userId user id of the user
     *
     @return boolean true or false depending upon the existence of the email id in database except this user.
     *
     */
    public boolean isEmailExist(String email, String userId) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select email from ecusers where userid=lower(?) and email<>?");
                pstmt.setString(1, userId);
                pstmt.setString(2, email);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * checkValidFeedback() function checks the validity of feedback given by user.
     * It checks whether the feedback given by the user is same feedback given by the same user earlier.
     *
     @param Feedback Object Feedback class
     *
     @return boolean it returns true if feedback is same otherwise false.
     *
     @see Feedback
     */
    public boolean checkValidFeedback(Feedback feedback) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select count(topic) as numOfRows from feedback where topic=? and name=? and email=? and userid=? and comment=? and client_ip=? and status=false");
                pstmt.setString(1, feedback.getTopic());
                pstmt.setString(2, feedback.getName());
                pstmt.setString(3, feedback.getEmail());
                pstmt.setString(4, feedback.getUserId());
                pstmt.setString(5, feedback.getComment());
                pstmt.setString(6, feedback.getIpAddress());
                res = pstmt.executeQuery();
                if(res.next()) {
                    int count = res.getInt("numOfRows");
                    if(count == 0) {
                        result = true;
                    }
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /** updateFeedbackStatus() method updates the status of a feedback.
     *
     * @param id An integer value having id of the feedback
     *
     * @param status A boolean value containing status of the feedback to be updated
     *
     * @return boolean It return true if the feedback status is updated successfully otherwise false.
     * 
     */
    public boolean updateFeedbackStatus(int id, boolean status) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update feedback set status=? where fid=?");
                pstmt.setBoolean(1, status);
                pstmt.setInt(2, id);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /** deleteFeedback() method is used to delete the specified feedback from database.
     *
     * @param id An integer value having id of the feedback
     *
     * @return boolean It return true if the feedback is deleted successfully otherwise false.
     *
     */
    public boolean deleteFeedback(int id) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("delete from feedback where fid=?");
                pstmt.setInt(1, id);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /** trackVisitor() function insert the ipAddress of the visitor in the visitorlog table.
     *  This method is used to track the ip address of the users who visits the website.
     *
     * @param ipAddress A string object containing ip address
     *
     * @return void This method returns nothing
     * 
     */
    public synchronized int trackVisitor(String ipAddress) {
        int visitorId = 0;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                stmt = con.createStatement();
                res = stmt.executeQuery("select nextval('vl_seq') as nextid");
                if(res.next()) {
                    visitorId = res.getInt("nextid");
                }
                pstmt = con.prepareStatement("insert into visitorlogs(id,time,ipaddress) values(?,CURRENT_TIMESTAMP,?)");
                pstmt.setInt(1, visitorId);
                pstmt.setString(2, ipAddress);
                pstmt.executeUpdate();
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }
            finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeStatement(stmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return visitorId;
    }

    /**
     *
     */
    public boolean updateVisitorLanguage(int visitorId, int langId) {
        boolean result = true;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update visitorlogs set lang_id=?,language_changed=? where id=?");
                pstmt.setInt(1, langId);
                pstmt.setBoolean(2, true);
                pstmt.setInt(3, visitorId);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * subscribeNewsletter() function is used when a person subscribe for newsletter.
     * This function inserts the email into database table.
     * @param email A string containing the email id.
     * @return boolean It returns true if the insertion of email is successful otherwise false.
     */
    public boolean subscribeNewsletter(String email) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("insert into newsletter_subscription(email) values(?)");
                pstmt.setString(1, email);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }

            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * isAlreadySubscribed() function checks whether the given email id subscribed for newsletter or not.
     * @param email A string containing the email id.
     * @return boolean It return true if the given email is already subscribed for newsletter otherwise false.
     */
    public boolean isAlreadySubscribed(String email) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select email from newsletter_subscription where email=?");
                pstmt.setString(1, email);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * isAlreadySubscribed() function checks whether the given email id subscribed for newsletter or not.
     * @param email A string containing the email id.
     * @param boolean A boolean value containing the status
     * @return boolean It return true if the given email is already subscribed for newsletter otherwise false.
     */
    public boolean isAlreadySubscribed(String email, boolean status) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select email from newsletter_subscription where email=? and activation_status=?");
                pstmt.setString(1, email);
                pstmt.setBoolean(2, status);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * updateNewsletterSubscription() function updates the status of of newsletter subscription.
     * It updates the status based on the email address and turn the subscription status to true or false.
     * @param email A string containing the email address
     * @param status A boolean containing the status of newsletter subscription (true or false)
     * @return boolean It return true if the update operation is successful otherwise false.
     */
    public boolean updateNewsletterSubscription(String email, boolean status) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update newsletter_subscription set activation_status=? where email=?");
                pstmt.setBoolean(1, status);
                pstmt.setString(2, email);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * getPrivacySetting() function gets the privacy setting of a user's profile from database
     * and store all the settings in object of PrivacySetting class and return the object.
     *
     * @param userId Id of the user
     * @return PrivacySetting It returns an object of PrivacySetting class with all the privacy
     * setting details of the particular user if found otherwise it returns null
     * @see PrivacySetting
     */
    public PrivacySetting getPrivacySetting(String userId) {
        PrivacySetting setting = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select * from privacysetting where userid=?");
                pstmt.setString(1, userId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    setting = new PrivacySetting();
                    setting.setUserId(userId);
                    setting.setShowEmail(res.getBoolean("email_view"));
                    setting.setShowMobile(res.getBoolean("mobile_view"));
                    setting.setShowQualification(res.getBoolean("qualification_view"));
                    setting.setShowProfile(res.getBoolean("profile_view"));
                    setting.setShowLanguage(res.getBoolean("language_view"));
                    setting.setShowTopic(res.getBoolean("topic_view"));
                } else {
                    //if user's details are not there in privacysetting table then insert the
                    // default privacy setting for the user in privacysetting table
                    pstmt = con.prepareStatement("insert into privacysetting(userid) values(?)");
                    pstmt.setString(1, userId);
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated == 1) {
                        //creating object of PrivacySetting class
                        setting = new PrivacySetting();
                        //setting up default privacy setting
                        setting.setShowEmail(false);
                        setting.setShowMobile(false);
                        setting.setShowQualification(false);
                        setting.setShowProfile(true);
                        setting.setShowLanguage(true);
                        setting.setUserId(userId);
                    }
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return setting; // return the privacy setting
    }

    /**
     *
     * @param setting
     * @return
     */
    public boolean updatePrivacySetting(PrivacySetting setting) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("update privacysetting set email_view=?,mobile_view=?,qualification_view=?,profile_view=? where userid=?");
                pstmt.setBoolean(1, setting.canShowEmail());
                pstmt.setBoolean(2, setting.canShowMobile());
                pstmt.setBoolean(3, setting.canShowQualification());
                pstmt.setBoolean(4, setting.canShowProfile());
                pstmt.setString(5, setting.getUserId());
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /**
     * getUsers() function gets all the users exist in the ecusers table. It creates an array
     * of User class and return the array.
     * @return User[] It returns the array of User class, if no user found it return null
     */
    public User[] getUsers() {
        User[] users = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                String query = "select u.userid, u.role, u.lang_id, u.topic_id, u.disp_name, u.qualification, u.profile, u.email, u.mobile, l.verified, u.firstname, u.lastname, u.max_translation,l.last_login from ecusers u, eclogin l where u.userid=l.userid";
                pstmt = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                res = pstmt.executeQuery();
                res.last();
                int rowCount = res.getRow(); // calculating the total number of record (rows)
                res.beforeFirst();
                users = new User[rowCount];
                int count = 0;
                while(res.next()) {
                    users[count] = new User();
                    users[count].setUserId(res.getString("userid"));
                    users[count].setFirstName(res.getString("firstname"));
                    users[count].setLastName(res.getString("lastname"));
                    users[count].setRole(res.getString("role"));
                    users[count].setLangId(res.getInt("lang_id"));
                    users[count].setTopicId(res.getInt("topic_id"));
                    users[count].setDisplayName(res.getString("disp_name"));
                    users[count].setQualification(res.getString("qualification"));
                    users[count].setProfile(res.getString("profile"));
                    users[count].setEmail(res.getString("email"));
                    users[count].setVerified(res.getBoolean("verified"));
                    users[count].setMaxTranslation(res.getInt("max_translation"));
                    Timestamp tStamp = res.getTimestamp("last_login");
                    String time = "";
                    if(tStamp != null) {
                        time = tStamp.toString();
                        time = time.substring(0, time.lastIndexOf("."));
                    } else {
                        time = "Never logged in";
                    }
                    users[count].setLastLogin(time);
                    long mobile = res.getLong("mobile");
                    if(mobile > 1) {
                        users[count].setMobile(String.valueOf(mobile));
                    } else {
                        users[count].setMobile("Not Available");
                    }
                    count++;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return users;
    }

    /**
     * getUsers() function gets all the users(of a particular role given as parameter) exist in the
     * ecusers table. It creates an array of User class and return the array.
     * @return User[] It returns the array of User class, if no user found it return null
     */
    public User[] getUsers(String role) {
        User[] users = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                String query = "select u.userid, u.role, u.lang_id, u.topic_id, u.disp_name, u.qualification, u.profile, u.email, u.mobile, l.verified, u.firstname, u.lastname, u.max_translation,l.last_login from ecusers u, eclogin l where u.userid=l.userid and u.role=?";
                pstmt = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                pstmt.setString(1, role);
                res = pstmt.executeQuery();
                res.last();
                int rowCount = res.getRow(); // calculating the total number of record (rows)
                res.beforeFirst();
                users = new User[rowCount];
                int count = 0;
                while(res.next()) {
                    users[count] = new User();
                    users[count].setUserId(res.getString("userid"));
                    users[count].setFirstName(res.getString("firstname"));
                    users[count].setLastName(res.getString("lastname"));
                    users[count].setRole(res.getString("role"));
                    users[count].setLangId(res.getInt("lang_id"));
                    users[count].setTopicId(res.getInt("topic_id"));
                    users[count].setDisplayName(res.getString("disp_name"));
                    users[count].setQualification(res.getString("qualification"));
                    users[count].setProfile(res.getString("profile"));
                    users[count].setEmail(res.getString("email"));
                    users[count].setVerified(res.getBoolean("verified"));
                    users[count].setMaxTranslation(res.getInt("max_translation"));
                    Timestamp tStamp = res.getTimestamp("last_login");
                    String time = "";
                    if(tStamp != null) {
                        time = tStamp.toString();
                        time = time.substring(0, time.lastIndexOf("."));
                    } else {
                        time = "Never logged in";
                    }
                    users[count].setLastLogin(time);
                    long mobile = res.getLong("mobile");
                    if(mobile > 1) {
                        users[count].setMobile(String.valueOf(mobile));
                    } else {
                        users[count].setMobile("Not Available");
                    }
                    count++;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return users;
    }

    /**
     * getUsers() function gets all the users(of a particular language given as parameter) exist in the
     * ecusers table. It creates an array of User class and return the array.
     * @return User[] It returns the array of User class, if no user found it return null
     */
    public User[] getUsers(int langId) {
        User[] users = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                String query = "select u.userid, u.role, u.lang_id, u.topic_id, u.disp_name, u.qualification, u.profile, u.email, u.mobile, l.verified, u.firstname, u.lastname, u.max_translation,l.last_login from ecusers u, eclogin l where u.userid=l.userid and u.lang_id=?";
                pstmt = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                pstmt.setInt(1, langId);
                res = pstmt.executeQuery();
                res.last();
                int rowCount = res.getRow(); // calculating the total number of record (rows)
                res.beforeFirst();
                users = new User[rowCount];
                int count = 0;
                while(res.next()) {
                    users[count] = new User();
                    users[count].setUserId(res.getString("userid"));
                    users[count].setFirstName(res.getString("firstname"));
                    users[count].setLastName(res.getString("lastname"));
                    users[count].setRole(res.getString("role"));
                    users[count].setLangId(res.getInt("lang_id"));
                    users[count].setTopicId(res.getInt("topic_id"));
                    users[count].setDisplayName(res.getString("disp_name"));
                    users[count].setQualification(res.getString("qualification"));
                    users[count].setProfile(res.getString("profile"));
                    users[count].setEmail(res.getString("email"));
                    users[count].setVerified(res.getBoolean("verified"));
                    users[count].setMaxTranslation(res.getInt("max_translation"));
                    Timestamp tStamp = res.getTimestamp("last_login");
                    String time = "";
                    if(tStamp != null) {
                        time = tStamp.toString();
                        time = time.substring(0, time.lastIndexOf("."));
                    } else {
                        time = "Never logged in";
                    }
                    users[count].setLastLogin(time);
                    long mobile = res.getLong("mobile");
                    if(mobile > 1) {
                        users[count].setMobile(String.valueOf(mobile));
                    } else {
                        users[count].setMobile("Not Available");
                    }
                    count++;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return users;
    }

    /**
     * getUsers() function gets all the users(with status(confirmed or not confirmed) given as parameter) exist in the
     * ecusers table. It creates an array of User class and return the array.
     * @return User[] It returns the array of User class, if no user found it return null
     */
    public User[] getUsers(boolean status) {
        User[] users = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                String query = "select u.userid, u.role, u.lang_id, u.topic_id, u.disp_name, u.qualification, u.profile, u.email, u.mobile, l.verified, u.firstname, u.lastname, u.max_translation,l.last_login from ecusers u, eclogin l where u.userid=l.userid and l.verified=?";
                pstmt = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                pstmt.setBoolean(1, status);
                res = pstmt.executeQuery();
                res.last();
                int rowCount = res.getRow(); // calculating the total number of record (rows)
                res.beforeFirst();
                users = new User[rowCount];
                int count = 0;
                while(res.next()) {
                    users[count] = new User();
                    users[count].setUserId(res.getString("userid"));
                    users[count].setFirstName(res.getString("firstname"));
                    users[count].setLastName(res.getString("lastname"));
                    users[count].setRole(res.getString("role"));
                    users[count].setLangId(res.getInt("lang_id"));
                    users[count].setTopicId(res.getInt("topic_id"));
                    users[count].setDisplayName(res.getString("disp_name"));
                    users[count].setQualification(res.getString("qualification"));
                    users[count].setProfile(res.getString("profile"));
                    users[count].setEmail(res.getString("email"));
                    users[count].setVerified(res.getBoolean("verified"));
                    users[count].setMaxTranslation(res.getInt("max_translation"));
                    Timestamp tStamp = res.getTimestamp("last_login");
                    String time = "";
                    if(tStamp != null) {
                        time = tStamp.toString();
                        time = time.substring(0, time.lastIndexOf("."));
                    } else {
                        time = "Never logged in";
                    }
                    users[count].setLastLogin(time);
                    long mobile = res.getLong("mobile");
                    if(mobile > 1) {
                        users[count].setMobile(String.valueOf(mobile));
                    } else {
                        users[count].setMobile("Not Available");
                    }
                    count++;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return users;
    }

    
    public boolean trackStudentProgress(String userid, String performance) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("insert into userperformance(userid,result) values(?,?)");
                pstmt.setString(1, userid);
                pstmt.setString(2, performance);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }
}

