package com.FileStorageSize;

import java.io.File;
import com.BeanClasses.UploadBean;

public class FileStorageSize {

	
	public static void main(String[] args) {
		new UploadBean();
		File  file=new File("C:\\Users\\System11\\eclipse-workspace\\MJNS09_2025\\WebContent\\Filestorage");
		long size=0;   
		if( file.isDirectory()){
			   File[] listoffiles=file.listFiles();
			   for(File size1:listoffiles)
			   {
				   size=size+size1.length();
				 }			   
			 System.out.println( file.length());
			 System.out.println(size);			 
		}
	}
}
