package com.self.ishowproj;

public class Logic {
	
	public static native void trigger(); 
	
	static {
		System.loadLibrary("_android_app_ishow_gyp");
	}

}
