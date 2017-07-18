package org.jsoft.util;

import java.util.List;
import java.util.Map;

public class StringUtil {

	/**
	 * 判断字符串是不是空
	 * @param str
	 * @return 如果是空返回true，不是空返回false
	 */
	public static boolean isBlank(String str){
		if(str == null){
			return true;
		}
		if("".equals(str.trim())){
			return true;
		}
		return false;
	}
	public static boolean isBlank(Object obj){
		if(obj == null){
			return true;
		}
		return false;
	}
	@SuppressWarnings("unchecked")
	public static boolean isBlank(List list){
		if(list != null && list.size() > 0){
			return false;
		}else{
			return true;
		}
	}
	@SuppressWarnings("unchecked")
	public static boolean isBlank(Map map){
		if(map != null && map.size() > 0){
			return false;
		}else{
			return true;
		}
	}
}
