
package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import org.apache.commons.io.FileUtils;
import java.util.List;
import java.util.ArrayList;
import java.io.File;
import java.util.Collection;
import java.util.Iterator;

public class SearchFileRecursive {
    
    public List searchFiles(File root, String[] extensions, boolean recursive) {
        List fileList = new ArrayList();

        try {

            //
            // Finds files within a root directory and optionally its
            // subdirectories which match an array of extensions. When the
            // extensions is null all files will be returned.
            //
            // This method will returns matched file as java.io.File
            //
            Collection files = FileUtils.listFiles(root, extensions, recursive);

            for (Iterator iterator = files.iterator(); iterator.hasNext();) {
                File file = (File) iterator.next();
                fileList.add(file.getAbsolutePath());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return fileList;
    }
}
