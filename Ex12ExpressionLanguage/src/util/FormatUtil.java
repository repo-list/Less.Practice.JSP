package util;

import java.text.DecimalFormat;

public class FormatUtil {
	public static String number(long number, String pattern) {
		DecimalFormat f = new DecimalFormat(pattern);
		return f.format(number);
	}
}
