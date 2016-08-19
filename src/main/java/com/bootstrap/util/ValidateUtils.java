package com.bootstrap.util;

import java.util.Collection;

public class ValidateUtils {

	/**
	 * 判断集合是否有效
	 * @param coll
	 * @return
	 */
	public static boolean isValidate(Collection<?> coll){
		if(coll==null||coll.isEmpty()){
			return false;
		}
		return true;
	}
	
}
