import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class Ex11 {
	public static void main(String[] args) throws IOException {
//		InputStreamReader 입력
		OutputStream os = new FileOutputStream("src/d.txt"); //outpuestream 출력
		String test = "안녕하세요";
		byte[] atest_byte = test.getBytes();
		os.write(atest_byte);
		os.close();
		
	}
}
