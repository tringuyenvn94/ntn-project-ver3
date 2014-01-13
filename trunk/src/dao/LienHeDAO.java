package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.LienHeEntity;

public class LienHeDAO {
	public static void LuuLienHe(LienHeEntity lh) {
		
		int[] indexes = {1, 2, 3, 4, 5, 6, 7, 8};
		Object[] values = {lh.getFullName(), lh.getEmail(), lh.getPhone(), lh.getAddress(), lh.getCompany(), lh.getContact(), lh.getContent(), new Date()};
		String sql = "INSERT INTO LIENHE(fullname, email,phone, address, company, contact, content, date) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		Utils.util.insert(sql, indexes, values);
	}
	
	/**
	 * Phương thức load tất cả các liên hệ có trong database
	 * @return List danh sách các liên hệ
	 * */
	public static List<LienHeEntity> loadLienHe() {
		List<LienHeEntity> contacts = new ArrayList<>();
		String sql = "SELECT * FROM LIENHE";
		ResultSet rs = Utils.util.getResultSet(sql);
		try {
			while (rs.next()) {
				LienHeEntity lh = new LienHeEntity();
				int id = rs.getInt("id");
				String fullName = rs.getString("fullname");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String company = rs.getString("company");
				String contact = rs.getString("contact");
				String content = rs.getString("content");
				Date date = rs.getDate("date");
				boolean read = rs.getBoolean("read");
				
				lh.setId(id);
				lh.setFullName(fullName);
				lh.setEmail(email);
				lh.setPhone(phone);
				lh.setAddress(address);
				lh.setCompany(company);
				lh.setCompany(company);
				lh.setContact(contact);
				lh.setContent(content);
				lh.setDate(date);
				lh.setRead(read);
				contacts.add(lh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return contacts;
	}
	
	/**
	 * Phương thức xóa một liên hệ
	 * @param id id của liên hệ
	 * */
	public static void delete(int id) {
		String sql = "DELETE FROM LIENHE WHERE id = ?";
		int[] indexes = { 1 };
		Object[] values = { id };
		Utils.util.delete(sql, indexes, values);
	}
	
	/**
	 * Load một liên hệ lên nhờ vào id của nó
	 * @param id id của liên hệ cần load
	 * @return một liên hệ
	 * */
	public static LienHeEntity load(int id) {
		LienHeEntity lh = new LienHeEntity();
		String sql = "SELECT * FROM LIENHE WHERE id = ?";
		ResultSet rs = Utils.util.getResultSet(sql, id + "");
		try {
		while (rs.next()) {
			String fullName = rs.getString("fullname");
			String email = rs.getString("email");
			String phone = rs.getString("phone");
			String address = rs.getString("address");
			String company = rs.getString("company");
			String contact = rs.getString("contact");
			String content = rs.getString("content");
			Date date = rs.getDate("date");
			boolean read = rs.getBoolean("read");
			
			lh.setId(id);
			lh.setFullName(fullName);
			lh.setEmail(email);
			lh.setPhone(phone);
			lh.setAddress(address);
			lh.setCompany(company);
			lh.setCompany(company);
			lh.setContact(contact);
			lh.setContent(content);
			lh.setDate(date);
			lh.setRead(read);
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lh;
	}
	
	/**
	 * Phương thức đánh dấu tất cả các liên hệ là đã đọc
	 * */
	public static void forceAllRead() {
		String sql = "UPDATE lienhe SET lienhe.read = ?";
		int[] indexes = { 1 };
		Object[] values = { true };
		Utils.util.update(sql, indexes, values);
	}
	
	/**
	 * Phương thức xóa tất cả các liên hệ
	 * */
	public static void deleteAll() {
		String sql = "DELETE FROM LIENHE WHERE 1 = ?";
		int[] indexes = { 1 };
		Object[] values = { true };
		Utils.util.update(sql, indexes, values);
	}
	
}
