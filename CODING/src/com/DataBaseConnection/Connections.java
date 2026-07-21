package com.DataBaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;

import com.sun.media.sound.SoftSynthesizer;

import javafx.stage.StageStyle;

public class Connections {
	private static Connection con;
	public static Connection getcon() {
		try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MJNS09_2025","root","root");
				
				
				System.out.println("connection loaded");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return con;
	
	}

}
