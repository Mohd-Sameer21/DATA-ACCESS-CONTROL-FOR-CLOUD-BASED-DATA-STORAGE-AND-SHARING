package com.BeanClasses;



public class UploadBean {
	private String filename, username;
	private String filepath;
	private double fileSize1;
	private String userkey;
	private String from;
	private String to;
	private String file_real_path;
	private String ReciverName;

	public String getReciverName() {
		return ReciverName;
	}

	public void setReciverName(String ReciverName) {
		this.ReciverName = ReciverName;
	}

	public String getFile_real_path() {
		return file_real_path;
	}

	public void setFile_real_path(String file_real_path) {
		this.file_real_path = file_real_path;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserkey() {
		return userkey;
	}

	public void setUserkey(String userkey) {
		this.userkey = userkey;
	}

	private int key;

	public int getKey() {
		return key;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public double getFileSize1() {
		return fileSize1;
	}

	public void setFileSize1(double fileSize2) {
		this.fileSize1 = fileSize2;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

}
