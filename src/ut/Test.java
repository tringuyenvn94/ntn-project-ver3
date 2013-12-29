package ut;

import handle.MyConnection;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class Test {
	public static void main(String[] args) throws Exception {
		String sql = "INSERT INTO LINHVUC VALUES(?)";
		int[] indexes = { 1 };
		String[] values = new String[1];;
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream("src/Files/linhvuc.txt"),"utf8"));
		String linhvuc = "";
		while ((linhvuc = reader.readLine()) != null) {
			values[0] =  linhvuc ;
			MyConnection.myConn.insert(sql, indexes, values);
		}
		reader.close();
	}
}
