
package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import java.security.SecureRandom;
import java.math.BigInteger;

public class RandomString {
    private SecureRandom random = new SecureRandom();
    public String nextString()
    {
        return new BigInteger(35, random).toString(32);
    }
}
