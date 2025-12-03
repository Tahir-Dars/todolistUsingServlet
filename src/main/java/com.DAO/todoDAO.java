package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class todoDAO {
	private Connection con;

	public todoDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean addtoDo(String TODO,String timWindow,String status) {

		boolean f = false;
		try {
          String sql="insert into todo(TODO,timWindow,status) values(?,?,?) ";
            
            PreparedStatement ps= con.prepareStatement(sql);
            ps.setString(1,TODO);
            ps.setString(2,timWindow);
            ps.setString(3,status);
            int i=ps.executeUpdate();
            if(i==1) {
            	f=true;
            }
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}
	
