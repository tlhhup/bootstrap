package com.bootstrap.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.Marker;
import org.slf4j.MarkerFactory;

public class LoggerUtils {
	
	private static Logger logger = LoggerFactory.getLogger(LoggerUtils.class);
	private static Marker marker = MarkerFactory.getMarker("com.bootstrap");
	
	public static boolean isDebugEnabled(){
		return logger.isDebugEnabled();
	}

	public static void d(String msg) {
		logger.debug(marker, msg);
	}

	public static void i(String msg) {
		logger.info(marker, msg);
	}

	public static void w(String msg) {
		logger.warn(marker, msg);
	}

	public static void e(String msg) {
		logger.error(marker, msg);
	}

}
