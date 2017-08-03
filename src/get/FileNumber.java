package get;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileNumber {
    public FileNumber() {
    }

    public void NumberWriteToFile(int x, String y) {
        int c = 0;
        c = x;
        File filePath = new File(y);
        File f1 = new File(filePath, "number.txt");

        try {
            FileOutputStream fout = new FileOutputStream(f1);
            DataOutputStream out = new DataOutputStream(fout);
            out.writeInt(c);
        } catch (FileNotFoundException var8) {
            System.err.println(var8);
        } catch (IOException var9) {
            System.err.println(var9);
        }

    }

    public int NumberReadFromFile(String y) {
        int c1 = 0;
        File filePath = new File(y);
        File f1 = new File(filePath, "number.txt");

        try {
            FileInputStream fin = new FileInputStream(f1);
            DataInputStream in = new DataInputStream(fin);
            c1 = in.readInt();
            System.out.println(c1);
        } catch (FileNotFoundException var7) {
            System.err.println(var7);
        } catch (IOException var8) {
            System.err.println(var8);
        }

        return c1;
    }
}
