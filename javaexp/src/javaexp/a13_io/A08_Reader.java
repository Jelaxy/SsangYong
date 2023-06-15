package javaexp.a13_io;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class A08_Reader {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String path = "C:\\a01_javaexp\\workspace\\javaexp\\src\\javaexp\\a13_io\\";
		Reader reader = null;
		try {
			reader = new FileReader(path+"z04_data.txt");
			while(true) {
				int code = reader.read(); // 한자씩 코드값을 가져 온다
				if(code==1) { // 더이상 데이터가 없을 때 반복 종료
					break;
				}
				System.out.println((char)code);
			}
			reader.close();
			System.out.println("읽기 종료");			
		}catch(FileNotFoundException e) {
			System.out.println("해당 파일을 읽을 수 없네요!");
			System.out.println(e.getMessage());
	
		}catch(IOException e) {
			System.out.println("IO 예외");
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println("기타예외:"+e.getMessage());
		}finally {
			if(reader!=null) {
				// reader 객체가 메모리에 있을 때 최종으로 자원해제
				try {
					reader.close();
				}catch(IOException e) {
					e.printStackTrace();
				}
			}System.out.println("#최종 자원 해제#");
		}
	}

}
