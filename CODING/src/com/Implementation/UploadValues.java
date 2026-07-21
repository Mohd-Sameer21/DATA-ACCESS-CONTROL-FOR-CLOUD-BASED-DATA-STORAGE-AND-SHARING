package com.Implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.BeanClasses.BeanClassMethods;
import com.BeanClasses.UploadBean;
import com.DataBaseConnection.Connections;
import com.interfaces.UploadInterface;

public class UploadValues implements UploadInterface {
	PreparedStatement ps = null;
	static Connection con;

	@Override
	public ArrayList upload(UploadBean bean) {
		// TODO Auto-generated method stub
		ArrayList al=new ArrayList();
		return al;
	}

	@Override
	public double uploadFiles(UploadBean bean) {
		double i = 0;
		

		System.out.println(bean.getFilename() + "->Path=" + bean.getFilepath()
				+ "->size1=" + bean.getFileSize1());
		double filesize = bean.getFileSize1();

		if (filesize <= 1048576) {

			try {
				con = Connections.getcon();
				String insert1mb = "insert into MJNS09_2025.filea values(?,?,?,?,?)";
				System.out.println(insert1mb);
				ps = con.prepareStatement(insert1mb);
				ps.setString(1, bean.getFilename());
				System.out.println(bean.getFilename());
				ps.setDouble(2, bean.getFileSize1());
				ps.setString(3, bean.getFilepath());
				ps.setString(4, bean.getUserkey());
				ps.setString(5, bean.getUsername());
				i = ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return i;
		} else if (filesize > 1048576 && filesize <= 2097152) {
			try {
				con = Connections.getcon();
				String insert2mb = "insert into MJNS09_2025.fileb values(?,?,?,?,?)";
				System.out.println(insert2mb);
				ps = con.prepareStatement(insert2mb);
				ps.setString(1, bean.getFilename());
				ps.setDouble(2, bean.getFileSize1());
				ps.setString(3, bean.getFilepath());
				ps.setString(4, bean.getUserkey());
				ps.setString(5, bean.getUsername());
				i = ps.executeUpdate();
			} catch (SQLException e) {

				e.printStackTrace();
				return i;
			}
		} else if (filesize > 2097152 && filesize <= 10485760) {
			try {
				con = Connections.getcon();
				String insert10mb = "insert into MJNS09_2025.filec values(?,?,?,?,?)";
				System.out.println(insert10mb);
				ps = con.prepareStatement(insert10mb);
				ps.setString(1, bean.getFilename());
				ps.setDouble(2, bean.getFileSize1());
				ps.setString(3, bean.getFilepath());
				ps.setString(4, bean.getUserkey());
				ps.setString(5, bean.getUsername());
				i = ps.executeUpdate();
			} catch (SQLException e) {

				e.printStackTrace();
				return i;
			}
		} else if (filesize > 10485760) {
			try {
				con = Connections.getcon();
				String insert20mb = "insert into MJNS09_2025.filed values(?,?,?,?,?)";
				System.out.println(insert20mb);
				ps = con.prepareStatement(insert20mb);
				ps.setString(1, bean.getFilename());
				ps.setDouble(2, bean.getFileSize1());
				ps.setString(3, bean.getFilepath());
				ps.setString(4, bean.getUserkey());
				ps.setString(5, bean.getUsername());
				i = ps.executeUpdate();
			} catch (SQLException e) {

				e.printStackTrace();
				return i;
			}
		}
		return i;

	}

	@Override
	public boolean viewAllTables(UploadBean bean) {

		return false;
	}
}
