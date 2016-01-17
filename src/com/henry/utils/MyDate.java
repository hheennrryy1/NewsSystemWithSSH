package com.henry.utils;

import java.sql.Date;

public class MyDate {
	public static Date getDate() {
		return new java.sql.Date(new java.util.Date().getTime());
	}
}
