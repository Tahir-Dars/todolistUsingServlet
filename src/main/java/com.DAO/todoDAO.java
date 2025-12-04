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
	
	public List<Entity> getTodo() {
		List<Entity> list = new ArrayList<Entity>();
		Entity t = null;
		try {
			String sql = "select * from todo";
			PreparedStatement ps01 = con.prepareStatement(sql);
			ResultSet rs = ps01.executeQuery();
			while (rs.next()) {
				t = new Entity();
				t.setId(rs.getInt(1));
				t.setTodo(rs.getString(2));
				t.setTimeWindow(rs.getString(3));
				t.setStatus(rs.getString(4));
				list.add(t);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public Entity getdobyid(int id) {
		Entity t = null;
		try {
			String sql = "select * from todo where TODO=?";
			PreparedStatement ps02 = con.prepareStatement(sql);
			ps02.setInt(1, id);
			ResultSet rs = ps02.executeQuery();
			while (rs.next()) {
				t = new Entity();
				t.setId(rs.getInt(1));
				t.setTodo(rs.getString(2));
				t.setTimeWindow(rs.getString(3));
				t.setStatus(rs.getString(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}
}
	
