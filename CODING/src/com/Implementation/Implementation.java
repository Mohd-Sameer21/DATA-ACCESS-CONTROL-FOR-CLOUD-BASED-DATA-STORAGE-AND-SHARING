package com.Implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.BeanClasses.BeanClassMethods;
import com.BeanClasses.UploadBean;
import com.BeanClasses.keyBean;
import com.DataBaseConnection.Connections;
import com.interfaces.InterfaceMethods;

public class Implementation implements InterfaceMethods {
	static Connection con;
	PreparedStatement ps = null;
	ResultSet resultSet = null;
	UploadBean bean = new UploadBean();


	@SuppressWarnings("rawtypes")
	public ArrayList[] retriveUserData (String username) {
		System.out.println("from retriveUserData method"+"=username"+username);
		ArrayList<String> products = new ArrayList<String>();
		ArrayList<String> products1 = new ArrayList<String>();
		ArrayList<String> products2 = new ArrayList<String>();
		ArrayList<String> products3 = new ArrayList<String>();
		ArrayList[] collection = new ArrayList[4];
		con = Connections.getcon();
		try {
			String filea = "select *  from filea where username='"+username+"'";
			String fileb = "select *  from fileb where username='"+username+"'";
			String filec = "select *  from filec where username='"+username+"'";
			String filed = "select *  from filed where username='"+username+"'";
			ArrayList<String> sql = new ArrayList<String>();
			sql.add(filea);
			sql.add(fileb);
			sql.add(filec);
			sql.add(filed);

			int count = 0;
			for (String statement : sql) {
				count++;
				System.out.println("statement "+statement);
				PreparedStatement ps = con.prepareStatement(statement);
				ResultSet set3 = ps.executeQuery();
				while (set3.next()) {
					if (count == 2) {
						products1.add(set3.getString(1).trim());
						products1.add(set3.getString(2).trim());
						products1.add(set3.getString(3).trim());
						products1.add(set3.getString(4).trim());
					}
					if (count == 3) {
						products2.add(set3.getString(1).trim());
						products2.add(set3.getString(2).trim());
						products2.add(set3.getString(3).trim());
						products2.add(set3.getString(4).trim());
					}
					if (count == 4) {
						products3.add(set3.getString(1).trim());
						products3.add(set3.getString(2).trim());
						products3.add(set3.getString(3).trim());
						products3.add(set3.getString(4).trim());
					}
					if (count == 1) {
						products.add(set3.getString(1).trim());
						products.add(set3.getString(2).trim());
						products.add(set3.getString(3).trim());
						products.add(set3.getString(4).trim());
					}
				}
			}
			collection[0] = products;
			collection[1] = products1;
			collection[2] = products2;
			collection[3] = products3;
		} catch (SQLException e) {
	
			e.printStackTrace();
		}
		return collection;
	}
	
	public boolean login(BeanClassMethods bm) {

		try {
			con = Connections.getcon();
			String loginverify = "select * from register where username=? and password=?";
			System.out.println(loginverify);
			ps = con.prepareStatement(loginverify);
			ps.setString(1, bm.getUsername());
			ps.setString(2, bm.getPassword());
			resultSet = ps.executeQuery();
			while (resultSet.next()) {
				return true;
			}
		} catch (SQLException e ) {
			
			System.out.println(e + "error from Implementation login Method");
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public int register(BeanClassMethods bm) {
		
//		String stringform="DM";
		int status = 0;
		System.out.println(status + "status");
		con = Connections.getcon();
		try {
//Random random=new Random();
//
//int usersecreat=random.nextInt(1234567890);
//String ss=stringform+usersecreat;

			String sqlQuery = "insert into MJNS09_2025.register values(?,?,?,?,?,?,?,?,?)";
			System.out.println(sqlQuery + "sql query1");
			// ps=Connections.getcon().prepareStatement(sqlQuery);
			ps = con.prepareStatement(sqlQuery);
			System.out.println(sqlQuery + "sql query2");
			ps.setString(1, bm.getUsername());
			ps.setString(2, bm.getPassword());
			ps.setString(3, bm.getRpassword());
			ps.setString(4, bm.getGender());
			ps.setString(5, bm.getMailid());
			ps.setString(6, bm.getNumber());
			ps.setString(7, bm.getAddress());
			ps.setString(8, bm.getDat());
			ps.setString(9, bm.getNat());
//			ps.setString(8,ss);
			System.out.println(sqlQuery + "sql query3");

			status = ps.executeUpdate();
			System.out.println(status + "status");

		} catch (Exception e) {
			System.out.println("error in register method=" + e);
			e.printStackTrace();
		
		}
		return status;
		

	}
	@Override
	public ArrayList<String> userSearch(UploadBean bean, String keyy) {
		
		ArrayList<String> al = new ArrayList<String>();
		ArrayList<String> al1 = new ArrayList<String>();
		al1.add("filea");
		al1.add("fileb");
		al1.add("filec");
		al1.add("filed");

		try {

			con = Connections.getcon();
			Statement statement = con.createStatement();
				for (int i = 0; i <= al1.size() - 1; i++) {
					System.out.println("loop value is" + i);
					resultSet = statement.executeQuery("select distinct filename from "
							+ al1.get(i) + " where keyy='" + keyy+ "'");
					System.out.println("loop value is" + i);
					while (resultSet.next()) {
						al.add(resultSet.getString(1));
						al.add(al1.get(i));
					}
				}
			
					} catch (SQLException e) {
	
			System.out
					.println("error in userSearch Method from implemetation class==>"
							+ e);
			e.printStackTrace();
		}

		return al;
	}

	@SuppressWarnings("rawtypes")
	public ArrayList[] viewAdminUploadedValue() {
		ArrayList<String> products = new ArrayList<String>();
		ArrayList<String> products1 = new ArrayList<String>();
		ArrayList<String> products2 = new ArrayList<String>();
		ArrayList<String> products3 = new ArrayList<String>();
		ArrayList[] collection = new ArrayList[4];
		con = Connections.getcon();
		try {
			String filea = "select *  from filea";
			String fileb = "select *  from fileb";
			String filec = "select *  from filec";
			String filed = "select *  from filed";
			ArrayList<String> sql = new ArrayList<String>();
			sql.add(filea);
			sql.add(fileb);
			sql.add(filec);
			sql.add(filed);

			int count = 0;
			for (String statement : sql) {
				count++;
				System.out.println("statement "+statement);
				PreparedStatement ps = con.prepareStatement(statement);
				ResultSet set3 = ps.executeQuery();
				while (set3.next()) {
					if (count == 2) {
						products1.add(set3.getString(1).trim());
						products1.add(set3.getString(2).trim());
						products1.add(set3.getString(3).trim());
						products1.add(set3.getString(4).trim());
						products1.add(set3.getString(5).trim());
					}
					if (count == 3) {
						products2.add(set3.getString(1).trim());
						products2.add(set3.getString(2).trim());
						products2.add(set3.getString(3).trim());
						products2.add(set3.getString(4).trim());
						products2.add(set3.getString(5).trim());
					}
					if (count == 4) {
						products3.add(set3.getString(1).trim());
						products3.add(set3.getString(2).trim());
						products3.add(set3.getString(3).trim());
						products3.add(set3.getString(4).trim());
						products3.add(set3.getString(5).trim());
					}
					if (count == 1) {
						products.add(set3.getString(1).trim());
						products.add(set3.getString(2).trim());
						products.add(set3.getString(3).trim());
						products.add(set3.getString(4).trim());
						products.add(set3.getString(5).trim());
					}
				}
			}
			collection[0] = products;
			collection[1] = products1;
			collection[2] = products2;
			collection[3] = products3;
		} catch (SQLException e) {
	
			e.printStackTrace();
		}
		return collection;
	}
	public HashMap<String, Double> tableSize() {
		HashMap<String, Double> h=new HashMap<String, Double>();
		con=Connections.getcon();
		try {
			String filea="SELECT sum(filesize) FROM MJNS09_2025.filea";
			String fileb="SELECT sum(filesize) FROM MJNS09_2025.fileb";
			String filec="SELECT sum(filesize) FROM MJNS09_2025.filec";
			String filed="SELECT sum(filesize) FROM MJNS09_2025.filed";				
			
			ArrayList<String> al=new ArrayList<String>();			
			al.add(filea);
			al.add(fileb);
			al.add(filec);
			al.add(filed);
			for (String string : al) {
				System.out.println(string);
				ps=con.prepareStatement(string);
				resultSet=ps.executeQuery();
				if(resultSet.next())
				{
					
				Double r=resultSet.getDouble(1);
				System.out.println("sdsds "+r);
				h.put(string, r);
					//l=l+Long.parseLong(resu);
				}	
			}
				
				
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		
		return h;

	}
	public int deleteTable(UploadBean bean)
	{
		System.out.println("deleteTable method");
		int status = 0;
		System.out.println(status + "status");
		con = Connections.getcon();
		try {

			Statement st = con.createStatement();
			  String sql = "delete from "+bean.getFrom()+" where keyy ='"+bean.getUserkey()+"'";
			  System.out.println(sql+"==delete query");
			  status = st.executeUpdate(sql);
			  if(status == 1){
			  System.out.println("Row is deleted.");
			
		} 
		}catch (Exception e) {
			System.out.println("error in deleteTable method=" + e);
			e.printStackTrace();
			
		}
		return status;
		
		
		
	}
	public int insertTable(UploadBean bean)
	{
		System.out.println("insertTable method");
		int status = 0;
		System.out.println(status + "status");
		con = Connections.getcon();
		try {
			System.out.println(bean.getFrom()+bean.getUserkey());
			String insertquery = "insert into "+bean.getTo()+" values (?,?,?,?,?)";		
			System.out.println(insertquery+"insertquery Table Query");
			ps=con.prepareStatement(insertquery);
			ps.setString(1, bean.getFilename());
			ps.setDouble(2, bean.getFileSize1());
			ps.setString(3, bean.getFilepath());
			ps.setString(4, bean.getUserkey());
			
			ps.setString(5, bean.getUsername());
			status = ps.executeUpdate();
			System.out.println(status + "status");
			if(status == 1){
				  System.out.println("Row is inserted.");
			}
		}catch (Exception e) {
			System.out.println("error in insertTable method=" + e);
			e.printStackTrace();
			
		}
		return status;
	}

	@Override
	public ArrayList<String> getKeys(String table) {
		
		ArrayList<String> al = new ArrayList<String>();
		

		try {

			con = Connections.getcon();
			Statement statement = con.createStatement();
			System.out.println("select distinct keyy from "+ table);
					resultSet = statement.executeQuery("select distinct keyy from "+ table);
					while (resultSet.next()) {
						al.add(resultSet.getString(1));
					}
					} catch (SQLException e) {
	
			System.out
					.println("error in userSearch Method from implemetation class==>"
							+ e);
			e.printStackTrace();
		}

		return al;
	}
	public int getKeysCount(String table,String key) {
		
		
		
int count=0;
		try {

			con = Connections.getcon();
			Statement statement = con.createStatement();
					resultSet = statement.executeQuery("select  Count(*) from "+ table+" where keyy='"+key+"'");
					if (resultSet.next()) {
						count=resultSet.getInt(1);
					}
					} catch (SQLException e) {
	
			System.out
					.println("error in userSearch Method from implemetation class==>"
							+ e);
			e.printStackTrace();
		}

		return count;
	}
	public ArrayList<String> getKeysPath(String table,String key) {
		
		ArrayList<String> al = new ArrayList<String>();
		

		try {

			con = Connections.getcon();
			Statement statement = con.createStatement();
			System.out.println("select filepath from "+ table +" where keyy='"+key+"'");
					resultSet = statement.executeQuery("select filepath from "+ table +" where keyy='"+key+"'");
					while (resultSet.next()) {
						al.add(resultSet.getString(1));
					}
					} catch (SQLException e) {
	
			System.out
					.println("error in userSearch Method from implemetation class==>"
							+ e);
			e.printStackTrace();
		}

		return al;
	}

	@Override
	public ArrayList<String> userSearch1(UploadBean bean, String keyy) {
		// TODO Auto-generated method stub
		ArrayList<String> al = new ArrayList<String>();
		ArrayList<String> al1 = new ArrayList<String>();
		al1.add("filea");
		al1.add("fileb");
		al1.add("filec");
		al1.add("filed");

		try {

			con = Connections.getcon();
			Statement statement = con.createStatement();
			for (int i = 0; i <= al1.size() - 1; i++) {
				System.out.println("loop value is" + i);
				resultSet = statement.executeQuery("select * from "
						+ al1.get(i) + " where keyy='" + keyy + "'");
				System.out.println("loop value is" + i);
				while (resultSet.next()) {
					al.add(resultSet.getString(1));
					al.add(resultSet.getString(2));
					al.add(resultSet.getString(3));
					al.add(resultSet.getString(4));
					System.out.println("ss" + "size array=" + al.size());
				}
			}
		} catch (SQLException e) {
	
			System.out
					.println("error in userSearch Method from implemetation class==>"
							+ e);
			e.printStackTrace();
		}

		return al;
		
	}
	
	
	
	@Override
	public int sendfiles(UploadBean uploadBean) {

		int status1 = 0;
		System.out.println(status1 + "status");
		con = Connections.getcon();
		try {
			String sqlQuery1 = "insert into MJNS09_2025.sendfiles values(?,?,?,?,?)";
			System.out.println(sqlQuery1 + "sql query1");
			// ps=Connections.getcon().prepareStatement(sqlQuery);
			ps = con.prepareStatement(sqlQuery1);
			System.out.println(sqlQuery1 + "sql query2");
			ps.setString(1, uploadBean.getFilename());
			//ps.setDouble(2, uploadBean.getFileSize1());
			ps.setString(2, uploadBean.getFilepath());
			ps.setString(3, uploadBean.getUserkey());
			ps.setString(4, uploadBean.getUsername());
			ps.setString(5, uploadBean.getReciverName());
			

			System.out.println(sqlQuery1 + "sql query3");

			status1 = ps.executeUpdate();
			System.out.println(status1 + "status");

		} catch (Exception e) {
			System.out.println("error in register method=" + e);
			e.printStackTrace();
		
		}
		return status1;
		

	}

	@Override
	public int insertrequest(BeanClassMethods bcm) {
		// TODO Auto-generated method stub
		int status1 = 0;
		System.out.println(status1 + "status");
		con = Connections.getcon();
		try {
			String sqlQuery1 = "insert into MJNS09_2025.reqkey values(?,?,?)";
			
			
			ps = con.prepareStatement(sqlQuery1);
			
			ps.setString(1,bcm.getFrom());
			ps.setString(2, bcm.getFname());
			ps.setString(3, bcm.getTo());
			
			status1 = ps.executeUpdate();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status1;
	
}

	@Override
	public int insertkey(keyBean kb) {
		int status1 = 0;
		System.out.println(status1 + "status");
		con = Connections.getcon();
		try {
			String sqlQuery1 = "insert into MJNS09_2025.keyinsert values(?,?,?,?)";
			
			
			ps = con.prepareStatement(sqlQuery1);
			
			ps.setString(1,kb.getFileName());
			ps.setString(2,kb.getRecipient());
			ps.setString(3,kb.getFileOwner());
			ps.setString(4,kb.getKey());
			
			status1 = ps.executeUpdate();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status1;
}
}