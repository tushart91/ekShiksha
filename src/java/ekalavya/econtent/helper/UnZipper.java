

package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Scanner;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * A Java program to unzip a ZIP archive.
 * The ZIP archive file name is got from the user
 * through the System.in input stream
 */
public class UnZipper
{
    /**
     * Private Constructor as this is a utility class with only public
     * static methods
     */
    private UnZipper()
    {}

    public static void main(String[] args)
    {
        // Request and read the zip file name form the command line
        // Exit if any I/O problems
        String inputMessage = "Enter the name of the ZIP file: ";

        String zipFileName = readCommandLineInput(inputMessage);

        // Should validate the command line input to make sure
        // it is a valid file name and also a .zip file.
        // This validation is not implemented in this program.

        try
        {
            System.out.println("About to unzip the file '" + zipFileName + "'");
            UnZipper.unzip(zipFileName);
            System.out.println("Successfully unzipped the file '" + zipFileName + "'");
        }
        catch (IOException e)
        {
            System.err.println("Problems unzipping the file '" + zipFileName + "'");
            e.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * Request and read input from the command line (System.in)
     *
     * @param inputMessage
     *      The message to be displayed as a request to the user
     *
     * @return
     *      The input from the command line
     *
     */
    public static String readCommandLineInput(String inputMessage)
    {
        System.out.println(inputMessage);
        Scanner scanner = new Scanner(System.in);

        String inputLine = scanner.nextLine();
        return inputLine;
    }

    /**
     * The core Business Logic method that extracts a ZIP file maintaining
     * the folder structure
     *
     * @param zipFileName
     *      The name of the ZIP file to be extracted
     *
     * @throws IOException
     *      Problems while extacting the ZIP file
     */
    public static void unzip(String zipFileName)  throws IOException
    {
        ZipFile zipFile = null;
        InputStream inputStream = null;

        File inputFile = new File(zipFileName);
        try
        {
             // Wrap the input file with a ZipFile to iterate through
             // its contents
             zipFile = new ZipFile(inputFile);
             Enumeration<? extends ZipEntry> oEnum = zipFile.entries();
             while(oEnum.hasMoreElements())
             {
                 ZipEntry zipEntry = oEnum.nextElement();
                 File file = new File(zipEntry.getName());

                 if(zipEntry.isDirectory())
                 {
                     // If the entry in the ZIP file is a directory
                     // then create the directory
                     file.mkdirs();
                 }
                 else
                 {
                     // If the entry in the ZIP file is a file
                     // then write the file in the appropriate
                     // directory location (as it is in the ZIP file)
                     inputStream = zipFile.getInputStream(zipEntry);
                     write(inputStream, file);
                 }
             }
        }
        catch (IOException ioException)
        {
            throw ioException;
        }
        finally
        {
            // Clean up the I/O
            try
            {
                if (zipFile != null)
                {
                    zipFile.close();
                }
                if (inputStream != null)
                {
                    inputStream.close();
                }
            }
            catch(IOException problemsDuringClose)
            {
                System.out.println("Problems during cleaning up the I/O.");
            }
        }
    }

    /**
     * Writes to the supplied file with the contents read from the supplied input stream.
     *
     * @param inputStream
     *      The Source input stream from where the contents will be read to write to the file.
     *
     * @param fileToWrite
     *      The file to which the contents from the input stream will be written to.
     *
     * @throws IOException
     *      Any problems while reading from the input stream or writing to the file.
     */
    public static void write(InputStream inputStream, File fileToWrite) throws IOException
    {
            BufferedInputStream buffInputStream = new BufferedInputStream( inputStream );
            FileOutputStream fos = new FileOutputStream( fileToWrite );
            BufferedOutputStream bos = new BufferedOutputStream( fos );

            // write bytes
            int byteData;
            while( ( byteData = buffInputStream.read() ) != -1 )
            {
                 bos.write( (byte) byteData);
            }

            // close all the open streams
            bos.close();
            fos.close();
            buffInputStream.close();
    }
}

