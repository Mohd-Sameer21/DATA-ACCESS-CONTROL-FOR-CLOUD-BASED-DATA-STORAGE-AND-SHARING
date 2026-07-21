package com.FileStorageSize;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.DataBaseConnection.Connections;


public class DataaBaseDetails {
	static Connection con=null;
	static PreparedStatement ps=null;
	public static ArrayList<String> main(String[] args) {
		
		ArrayList<String> products = new ArrayList<String>();
		con = Connections.getcon();
		String tablea = "select * from filea";
		String tableb = "select * from filea";
		String tablec = "select * from filea";
		String tabled = "select * from filea";
		try {
			ps = con.prepareStatement(tablea);
			ps = con.prepareStatement(tableb);
			ps = con.prepareStatement(tablec);
			ps = con.prepareStatement(tabled);
			ResultSet set = ps.executeQuery();
			while (set.next()) {
				products.add(set.getString(5));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return products;
	}

}
