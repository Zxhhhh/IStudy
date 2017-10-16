package com.why.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Hex;

public class EncrypeUtil {
	
	
	/*用JDK的方法生成MD5密文*/
	public static  String tran2MD5(String src){
		
		try {
			
			//实例化MD对象
			MessageDigest md4MD5 = MessageDigest.getInstance("MD5");
			
			//对明文进行MD加密，产生密文
			byte[] encnodeSrc = md4MD5.digest(src.getBytes());
			
			//把密文转化为十六进制
			String result = Hex.encodeHexString(encnodeSrc);
			
			return result;
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("加密出错");
		}
	}
	
}
