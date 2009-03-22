package com.funds.models.jibenshezhi.JieSuanFangShi;


import java.sql.*;
import java.util.ArrayList;


public class JieSuanFangShiSheZhi {
	
	private String dm = "";
	private String mc = "";
	
	public String getDm() {
		return dm;
	}

	public void setDm(String dm) {
		this.dm = dm;
	}

	public String getMc() {
		return mc;
	}

	public void setMc(String mc) {
		this.mc = mc;
	}

	public JieSuanFangShiSheZhi(){}
	
	public JieSuanFangShiSheZhi(String dm, String mc) {
		super();
		this.dm = dm;
		this.mc = mc;
	}
	
	static{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	public ArrayList<String> isValid(){
		
		ArrayList<String> errs = new ArrayList();
		
		if(dm == null || dm.length() == 0){
			errs.add("代码不能为空，请输入代码！！！");
		}	
		
		if(mc == null || mc.equals("")){
			errs.add("结算方式不能为空，请输入结算方式！！！");
		}
			
		return errs;
		
	}
	
	public ArrayList<JieSuanFangShiSheZhi> returnAllJieSuanFangShiSheZhiInfo(){
		
		ArrayList<JieSuanFangShiSheZhi> list = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:PUBLICFINANCE","user","123456");
			ps = conn.prepareStatement("SELECT dm, mc FROM zi_jsfs");
			rs = ps.executeQuery();
			
			list = new ArrayList<JieSuanFangShiSheZhi>();
			
			while(rs.next()){
				list.add(new JieSuanFangShiSheZhi(rs.getString("dm"),rs.getString("mc")));
			}
			
			rs.close();
			ps.close();
			conn.close();	
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public boolean isFangShiExisted(){
		
		boolean isExisted = true;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:PUBLICFINANCE","user","123456");
			ps = conn.prepareStatement("SELECT * FROM zj_jsfs WHERE mc=?");
			ps.setString(1, mc);
			rs = ps.executeQuery();
			
			isExisted = rs.next();
			
			rs.close();
			ps.close();
			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
			
		return isExisted;
		
	}
	
	public boolean ZenJia(){
		
		Connection conn = null;
		PreparedStatement ps = null;
		int result = 0;
		
		if(isFangShiExisted()){
			return false;
		}
		
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:PUBLICFINANCE","user","123456");
			ps = conn.prepareStatement("INSERT INTO zj_jsfs (dm, mc) VALUES (?, ?)");
			ps.setString(1, dm);
			ps.setString(2, mc);
			result = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(ps!=null){ps.close();ps=null;}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
					if(conn!=null){conn.close();conn=null;}
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
		}
		
		return result == 1;
		
	}
	
}










