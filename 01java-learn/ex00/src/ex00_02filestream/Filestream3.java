package ex00_02filestream;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class Filestream3 {

	public static void main(String[] args) throws IOException {
		
		FileInputStream fis = null;
		
		fis = new FileInputStream("reader.txt");
		int i;
		while( (i = fis.read()) != -1) {
			System.out.print((char)i);
		}
		fis.close();
		System.out.println("end");
	}
}
