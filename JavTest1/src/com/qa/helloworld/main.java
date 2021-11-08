package com.qa.helloworld;

public class main {
	
	public static void main (String[] args) {
		
		String str1 = "yesterday it was raining";
		String str2 = "today it is sunny";
		
		System.out.println(str2.toUpperCase() + ", " + str1.toUpperCase());
		
		String subString1 = str2.substring(0, 11);
		String subString2 = str1.substring(16, 24);
		
		System.out.println(subString1 + subString2);
		
		count("Hello my name is a lemon");
		
		
	}
	
	public static void count(String testString) {
		
		int space = 0;
		for (int i = 0; i < testString.length(); i++) {
			if (testString.substring(i, i + 1).equals(" ") || i == (testString.length() - 1)) {
				space ++;
				}
	
			
		}
		System.out.println("The wordcount is " + space);
	}
}


