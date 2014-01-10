package handle;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validation {

	private final static String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

	public static boolean isNull(String field) {
		return field == null || field.equals("") || field.equals("null");
	}

	public static boolean isNulls(String[] fields) {
		for (int i = 0; i < fields.length; i++) {
			if (!isNull(fields[i])) return false;
		}
		return true;
	}

	public static boolean isPhoneNumber(String phoneNumber) {
		if (!isNull(phoneNumber)) {
			Pattern phoneNumberPatern = Pattern.compile("\\d{10,11}");
			Matcher phoneNumberMatcher = phoneNumberPatern.matcher(phoneNumber);
			if (phoneNumberMatcher.matches()) {
				return true;
			}
		}
		return false;
	}

	public static boolean isEmail(String email) {
			Pattern emailPattern = Pattern.compile(EMAIL_PATTERN);
			Matcher emailMatcher = emailPattern.matcher(email);
			if (emailMatcher.matches()) {
				return true;
			}
		return false;
	}
}
