package ut;

import handle.MyConnection;

public class Test {
	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/laptrinhweb";
		int[] indexes = {1, 2, 3, 4, 5, 6, 7};
		Object[] values = {"Vo Thi Cam Uyen", "nv_ca@yahoo.com", "097251554", "Dong Nai", "Nong Lam Tu", "Nong Lam Suc", "Anh Nu dep trai"};
		String sql = "INSERT INTO LIENHE VALUES(?, ?, ?, ?, ?, ?, ?)";
		new MyConnection(url).insert(sql, indexes, values);
	}
}
