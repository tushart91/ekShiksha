/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import java.util.*;
import java.io.File;
public class Main {
    /*
     * main() method to test java program.
     */
    public static void main(String[] args) {
        SearchFileRecursive search = new SearchFileRecursive();
        String[] extension = {"html","html"};
        File root = new File("/home/rkjangir/dbphatak");
        List fileList = search.searchFiles(root, extension, true);
        Iterator it = fileList.iterator();
        while(it.hasNext()) {
            System.out.println((String)it.next());
        }
    }
}
