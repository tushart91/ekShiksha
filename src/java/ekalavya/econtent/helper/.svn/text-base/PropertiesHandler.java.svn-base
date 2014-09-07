/**
 *
 * @author rajanikant
 */
package ekalavya.econtent.helper;

import java.io.*;
import java.util.Properties;
import java.util.Enumeration;

public class PropertiesHandler {
    private String filePath;
    private String fileName;
    private File file;
    private FileInputStream fis;
    private FileOutputStream fos;
    private Properties props;

    
    public boolean removeKeyValuePair(String key,String filePath, String fileName) {
        boolean result = false;
        try{
            loadProperties(filePath,fileName);
            String value = (String)props.remove(key);
            if(value != null) {
                result = true;
            }
            file = getFile(filePath,fileName);
            fos = getFileOutputStream(file);
            props.store(fos, null);
            closeFileOutputStream(fos);
        }catch(IOException ioe) {
            System.out.println(ioe);
        }
        return result;
    }
    public boolean setKeyValuePair(String key, String value, String filePath, String fileName) {
        boolean result = false;
        try{
            loadProperties(filePath,fileName);
            if(props.getProperty(key) == null) {
                props.setProperty(key, value);
                file = getFile(filePath,fileName);
                fos = getFileOutputStream(file);
                props.store(fos, null);
                closeFileOutputStream(fos);
                result = true;
            }
        }catch(IOException ioe) {
            System.out.println(ioe);
        }
        return result;
    }

    public boolean updateKeyValuePair(String key, String value, String filePath, String fileName) {
        boolean result = false;
        try{
            loadProperties(filePath,fileName);
            String put = (String)props.setProperty(key, value);
            if(put != null) {
               file = getFile(filePath,fileName);
               fos = getFileOutputStream(file);
               props.store(fos, null);
                closeFileOutputStream(fos);
                result = true;
            }
        }catch(IOException ioe) {
            System.out.println(ioe);
        }
        return result;
    }
    public String[][] getKeyValuePairs(String filePath, String fileName) {
        String[][] keyValue = null;
        try{
            loadProperties(filePath,fileName);
            String[] keys = getKeys();
            if(keys != null && keys.length > 0) {
                keyValue = new String[keys.length][2];
                for(int i=0;i<keys.length;i++) {
                    keyValue[i][0] = new String(keys[i]);
                    keyValue[i][1] = new String(getValue(keys[i]));
                }

            }
        }catch(IOException ioe) {
            System.out.println(ioe);
        }
        return keyValue;
    }
    private String[] getKeys() {
        int size = props.size();
        String[] keys = new String[size];
        Enumeration enums = props.keys();
        int counter = 0;
        while(enums.hasMoreElements()) {
            keys[counter] = new String((String)enums.nextElement());
            counter++;
        }
        return keys;
    }

    private String getValue(String key) {
        return props.getProperty(key);
    }

    public String getValue(String key, String filePath, String fileName) {
        String result = "";
        try{
            loadProperties(filePath,fileName);
            result = props.getProperty(key);
        }catch(IOException e) {
            System.out.println(e);
        }
        return result;
    }

    public void loadProperties(String filePath, String fileName) throws IOException{
        file = getFile(filePath,fileName);
        fis = getFileInputStream(file);
        props = getProperties();
        props.load(fis);
        closeFileInputStream(fis);
    }

    private Properties getProperties() {
        return new Properties();
    }
    private File getFile(String filePath, String fileName) {
        String separator = System.getProperties().getProperty("file.separator");
        return new File(filePath+separator+fileName);
    }

    private FileInputStream getFileInputStream(File file) throws IOException {
        return new FileInputStream(file);
    }

    private void closeFileInputStream(FileInputStream fis) throws IOException {
        fis.close();
    }

    private FileOutputStream getFileOutputStream(File file) throws IOException {
        return new FileOutputStream(file);
    }

    private void closeFileOutputStream(FileOutputStream fos) throws IOException {
        fos.close();
    }
}