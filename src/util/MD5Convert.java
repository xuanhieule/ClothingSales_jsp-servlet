/* 
 * @author	Xuan Hieu Le
 * contact: xuanhieu.le.1999@gmail.com
 * @date Jul 20, 2021
 * version 1.0
 */
package util;

import java.security.MessageDigest;

public class MD5Convert {

	public static String md5(String msg) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(msg.getBytes());
            byte byteData[] = md.digest();
            //convert the byte to hex format method 1
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
            return  sb.toString();
        } catch (Exception ex) {
            return "";
        }
    }

}
