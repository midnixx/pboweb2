package com.model.mhs;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.sql.Connection;
import java.sql.Statement;

import com.mysql.jdbc.*;

public class DBBiodata {
	Connection con;
	Statement st;
	ResultSet rs;
	public DBBiodata(){
			try { 
			String url ="jdbc:mysql://localhost:3306/pbolanjut";
            String user="root";
            String pass="";
            Class.forName("com.mysql.jdbc.Driver");
            con =DriverManager.getConnection(url,user,pass);
            st = con.createStatement();
            System.out.println("koneksi berhasil;");
				Class.forName("com.mysql.jdbc.Driver");
				 con =DriverManager.getConnection(url,user,pass);
				 st = con.createStatement();
			}catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
				System.err.println("koneksi gagal" +e.getMessage());
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	public Vector data() {
		try {
			st = (Statement) con.createStatement();
			rs=(ResultSet)st.executeQuery("SELECT * FROM mahasiswa");
			 System.out.println("Table berhasil;");
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Vector dBdata = new Vector(1);
		
		try {
			while(rs.next())
			{
			Vector rows = new Vector();
			rows.add(rs.getString(1));
			rows.add(rs.getString(2));
			rows.add(rs.getString(3));
			rows.add(rs.getString(4));
			rows.add(rs.getString(5));
			rows.add(rs.getString(6));
			dBdata.addElement(rows);
			 System.out.println("Data berhasil;");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return dBdata;
	}
	
	public void insertBiodata(String nim, String nama, String jk, String tmp_lahir, String tgl_lahir, String alamat) {
		try {
			st = (Statement) con.createStatement();
			st.executeUpdate("INSERT INTO mahasiswa (nim, nama, jk, tmp_lahir, tgl_lahir, alamat) VALUES"
								+ "("
								+"'"+nim+"', "
								+"'"+nama+"', "
								+"'"+jk+"', "
								+"'"+tmp_lahir+"', "
								+"'"+tgl_lahir+"', "
								+"'"+alamat+"'"
								+ ")"
							);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateBiodata(String nim, String nama, String jk, String tmp_lahir, String tgl_lahir, String alamat) {
		try {
			st = (Statement) con.createStatement();
			st.executeUpdate("UPDATE mahasiswa SET "
					+ "nim='"+nim+"', "
					+ "nama='"+nama+"', "
					+ "jk='"+jk+"', "
					+ "tmp_lahir='"+tmp_lahir+"', "
					+ "tgl_lahir='"+tgl_lahir+"', "
					+ "alamat='"+alamat+"' "
					+ "WHERE nim='"+nim+"'"
					);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
