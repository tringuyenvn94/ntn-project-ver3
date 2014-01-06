package dao;

import handle.Utils;

import java.util.Date;

import entity.LienHeEntity;

public class LienHeDAO {
	public static void LuuLienHe(LienHeEntity lh) {
		
		int[] indexes = {1, 2, 3, 4, 5, 6, 7, 8};
		Object[] values = {lh.getFullName(), lh.getEmail(), lh.getPhone(), lh.getAddress(), lh.getCompany(), lh.getContact(), lh.getContent(), new Date()};
		String sql = "INSERT INTO LIENHE(fullname, email,phone, address, company, contact, content, date) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		Utils.util.insert(sql, indexes, values);
	}
}
