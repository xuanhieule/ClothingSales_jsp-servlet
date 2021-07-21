/* 
 * @author	Xuan Hieu Le
 * contact: xuanhieu.le.1999@gmail.com
 * @date Jul 20, 2021
 * version 1.0
 */
package util;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

public class StringUtil {

	public StringUtil() {
		
	}
	//Định dạng tiền tệ
	public String FormatVND(Double price) {
		DecimalFormat format = new DecimalFormat("0.#");
		format.format(price);
		DecimalFormat dcf = new DecimalFormat("#.###");
		DecimalFormatSymbols dfs = new DecimalFormatSymbols(Locale.getDefault());
		dfs.setGroupingSeparator(',');
		dcf.setDecimalFormatSymbols(dfs);
		return dcf.format(price);
	}

}
