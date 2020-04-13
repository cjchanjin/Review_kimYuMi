package fileTest;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

public class FileInfo {
	
	public static void main(String[] args) {
//		fileInfo();
//		fileList();
//		fileCreateDelete();
		fileCopy();
	}

	public static void fileCopy() {
		
		try {
			File file = new File("D:\\FileUpTest\\4.jpg");		
			FileInputStream fis = new FileInputStream("D:\\FileUpTest\\4.jpg");		//복사할 원본
			FileOutputStream fos = new FileOutputStream("D:\\FileUpTest\\4_copy.jpg");		//
			byte[] temp = new byte [100];
			int size = 0;
			try {
				while( (size = fis.read(temp)) != -1 ) {
					fos.write(temp);
				}
				fis.close();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static void fileCreateDelete() {
		File file = new File("D:\\FileUpTest\\example.txt");
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
		File folder = new File("D:\\FileUpTest\\img");
		folder.mkdir();
		
		File file2 = new File("D:\\FileUpTest\\오라클접속.txt");
//		file2.delete();
	}

	public static void fileList() {
		File file = new File("D:/dev");
		if(file.isDirectory()) {
			String[] list = file.list();
			for ( String temp : list ) {
				System.out.println(temp);
			}
		}
	}

	public static void fileInfo() {
		File file = new File("D:\\FileUpTest\\4.jpg");
		System.out.println("파일크기 : " + file.length());
		System.out.println("파일경로 : "  + file.getPath());
		System.out.println("파일시간 : "+ new Date(file.lastModified()));
		
	}
}
