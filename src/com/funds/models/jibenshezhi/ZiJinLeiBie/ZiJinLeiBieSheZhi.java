package com.funds.models.jibenshezhi.ZiJinLeiBie;


import java.sql.*;
import java.util.ArrayList;


public class ZiJinLeiBieSheZhi {
	
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
	
	public ZiJinLeiBieSheZhi(){}
	
	public ZiJinLeiBieSheZhi(String dm, String mc) {
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
			errs.add("资金类别不能为空，请输入资金类别！！！");
		}
			
		return errs;
						
	}
	
	public ArrayList<ZiJinLeiBieSheZhi> returnAllZiJinLeiBieSheZhiInfo(){
		
		ArrayList<ZiJinLeiBieSheZhi> list = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:PUBLICFINANCE","user","123456");
			ps = conn.prepareStatement("SELECT * FROM zj_zjlb");
			rs = ps.executeQuery();
			
			list = new ArrayList();
			
			while(rs.next()){
				list.add(new ZiJinLeiBieSheZhi(rs.getString("dm"), rs.getString("mc")));
			}
				
			rs.close();
			ps.close();
			conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		
			return list;
			
	}
	
}








