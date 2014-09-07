
package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import java.util.regex.*;
public class Utility {

    public static boolean checkValidKey(String input) {
        boolean result = false;
        //This line defines the rule what a key can have.
        //Key can have Alphabets and . but it must start and end with alphabet
        Pattern p = Pattern.compile("^[A-Za-z]+([A-Za-z.]+)*([A-Za-z]+)$");
        Matcher m = p.matcher(input);
        StringBuffer sb = new StringBuffer();
        result = m.find();
        return result;
    }

    /**
     * This method is used to check that the given string is not null and
     * it's length is in a given range.
     * If given string is not null and it's length is in a given range return true otherwise false.
     * 
     @param string Given string to be checked for validity.
     * 
     @param minLength Minimum length of the string.
     * 
     @param maxLength Maximum length of the string.
     * 
     @return boolean true or false depending on the validity of the string is returned.
     * 
     */
    public static boolean isStringValid(String string, int minLength, int maxLength) {
        boolean result = false;
        if(string != null && !string.trim().isEmpty()) { // check for null or empty string
            // check the length of the string is within range or not.
            if(string.trim().length()>=minLength && string.trim().length() <=maxLength) {
                //set result to true.
                result = true;
            }
        }
        return result;
    }

    /**
     * This method is used to check that the given string is not null and
     * it's length is in a given range.
     * If given string is not null and it's length is in a given range return true otherwise false.
     *
     @param string Given string to be checked for validity.
     * 
     @return boolean true or false depending on the validity of the string is returned.
     *
     */
    public static boolean isStringValid(String string) {
        boolean result = false;
        if(string != null && !string.trim().isEmpty()) { // check for null or empty string
            result = true;
        }
        return result;
    }
    
    /**
     * This function is used to validate the email address.
     * It checks whether the given email address is in correct format or not.
     * If the address is in correct format it return true otherwise false.
     * @param email email address string to be checked for validity.
     *
     * @return boolean true or false depending on the validity of the email address.
     *
     */
    public static boolean validateEmail(String email) {
        boolean matchFound = false;
        if(email != null && !email.trim().isEmpty()) {
            //Set the email pattern string
            Pattern p = Pattern.compile(".+@.+\\.[a-z]+");
            //Match the given string with the pattern
            Matcher m = p.matcher(email);
            //check whether match is found
            matchFound = m.matches();
        }
        return matchFound;

    }

    /**
     * This method is used to check the validity of mobile number.
     * It check whether the mobile number is in correct format or not. If mobile number
     * is 10 digit, it should not start with 0 or if it is 11 digit then it should start
     * with a zero. It also checks whether mobile number begins with 7,8 or 9.
     *
     @param mobilenumber A mobile number as a string
     *
     @return boolean true or false depending on the validity of the mobile number.
     *
     */
    public static boolean validateMobileNumber(String mobilenumber) {
        /* mobilenumber should be 10 digits (beginning 9/8/7) long (at most 11 if beginning 0) */
        boolean result = (mobilenumber != null) &&
                         (mobilenumber.length() > 0) &&
                         (((mobilenumber.length() == 10) && (mobilenumber.matches("^[7-9][0-9]*$"))) ||
                         ((mobilenumber.length() == 11) && (mobilenumber.matches("^[0][7-9][0-9]*$"))));
        return result;
    }

    /**
     * This method is used to check the string that string only have alphabets.
     * It check whether the string have only alphabets or not.
     *
     * @param string A string object
     *
     * @return boolean true or false depending on the validity of the string.
     *
     */
    public static boolean isAllAlphabet(String string) {
        boolean result = false;
        //regular expression to check that given string only have alphabets.
        String alphaExp = "^[a-zA-Z]+$";
        //checking with regular expression
        result = string.matches(alphaExp);
        //returning the result
        return result;
    }

    /**
     * This method is used to check the string that string should only have alphabets or period (.).
     * It check whether the string have only alphabets, period(.) or not, if not then set result to false.
     * It also check occureance of two consecutive periods, if found set result to false .
     * This function also check whether string starts with alphabet or not, if not then set result to false;
     *
     @param string A string object
     *
     @return boolean true or false depending on the validity of the string.
     */
    public static boolean validateQualification(String string) {
        boolean result = false;
        //regular expression to check that given string only have alphabets,numbers and period.
        String alphaExp = "^[a-zA-Z0-9][a-zA-Z0-9/. ]+$";
        //checking with regular expression
        result = string.matches(alphaExp);
        if(result) {
            char previous = string.charAt(0);
            char current;
            for(int i=1;i<string.length();i++) {
                current = string.charAt(i);
                if(previous == current && previous == ' ') {
                    return false;
                }
                previous = current;
            }
        }
        //returning the result
        return result;
    }

    /**
     * This method is used to check the string that string should only have alphabets, numbers, period (.) and underscore(_).
     * It check whether the string have only alphabets, numbers, period(.), underscore(_) or not, if not then return false.
     * It also check occureance of two consecutive special characters, if found then return false.
     * It also check whether string starts with alphabet or not, if not then return false.
     *
     @param string A string object
     *
     @return boolean true or false depending on the validity of the string.
     *
     */
    public static boolean validateUserId(String string) {
        boolean result = false;
        String  userIdExp = "^[a-zA-Z][a-zA-Z0-9/./_]+[a-zA-Z0-9]+$";
        result = string.matches(userIdExp);
        if(result) {
            char previous = string.charAt(0);
            char current;
            int specialChar = 0;
            for(int i=1;i<string.length();i++) {
                current = string.charAt(i);
                if(previous == current && (previous == '.' || previous == '_')) {
                    return false;
                } else if(previous == '.' && current == '_') {
                    return false;
                } else if(previous == '_' && current == '.') {
                    return false;
                }
                previous = current;
            }
        }
        return result;
    }

    /**
     * This method is used to check the string that string should only have alphabets and space.
     * It check whether the string have only alphabets and space or not, if not then return false.
     * It also check occureance of two consecutive space, if found then return false.
     * It also check whether string starts with alphabet or not, if not then return false.
     *
     @param string A string object
     *
     @return boolean true or false depending on the validity of the string.
     *
     */
    public static boolean validateDisplayName(String string) {
        boolean result = false;
        String dispNameExp = "^[a-zA-Z][a-zA-Z ]+[a-zA-Z]+$";
        result = string.matches(dispNameExp);
        if(result) {
            char previous = string.charAt(0);
            char current;
        for(int i=1;i<string.length();i++) {
            current = string.charAt(i);
            if(previous == current && previous == ' ') {
                return false;
            }
            previous = current;
        }
        }
        return result;
    }

    /**
     * This method is used to check the string that string should only have alphabets and space.
     * It check whether the string have only alphabets and space or not, if not then return false.
     * It also check occureance of two consecutive space, if found then return false.
     * It also check whether string starts with alphabet or not, if not then return false.
     *
     @param string A string object
     *
     @return boolean true or false depending on the validity of the string.
     *
     */
    public static boolean validateName(String string) {
        boolean result = false;
        String dispNameExp = "^[a-zA-Z][a-zA-Z ]+[a-zA-Z]+$";
        result = string.matches(dispNameExp);
        if(result) {
            char previous = string.charAt(0);
            char current;
        for(int i=1;i<string.length();i++) {
            current = string.charAt(i);
            if(previous == current && previous == ' ') {
                return false;
            }
            previous = current;
        }
        }
        return result;
    }

    /**
     * This method is used to check the string that string should only have alphabets, space and dot(.).
     * It check whether the string have only alphabets, space and dot(.) or not, if not then return false.
     * It also check occureance of two consecutive space or dot(.), if found then return false.
     * It also check whether string starts with alphabet or not, if not then return false.
     *
     @param string A string object
     *
     @return boolean true or false depending on the validity of the string.
     *
     */
    public static boolean validateUserName(String string) {
        boolean result = false;
        String dispNameExp = "^[a-zA-Z][a-zA-Z/. ]+[a-zA-Z]+$";
        result = string.matches(dispNameExp);
        if(result) {
            char previous = string.charAt(0);
            char current;
        for(int i=1;i<string.length();i++) {
            current = string.charAt(i);
            if(previous == current && previous == ' ') {
                return false;
            }
            previous = current;
        }
        }
        return result;
    }

    /*
     *  captalizeFirstChar() methods Capitalize the first character of string.
     *  It takes a string value as a parameter.
     *  It return the formated string value.
     */
    public static String captalizeFirstChar(String value) {
        if(value != null && value.length() >1) {
            String firstLetter = value.substring(0,1);  // Get first letter
            String remainder   = value.substring(1);    // Get remainder of word.
            String capitalized = firstLetter.toUpperCase() + remainder.toLowerCase();
            return capitalized;
        }
        return value;
    }

    public static void main(String[] args) {
       System.out.println(Utility.validateQualification("3rd std"));
    }
}
