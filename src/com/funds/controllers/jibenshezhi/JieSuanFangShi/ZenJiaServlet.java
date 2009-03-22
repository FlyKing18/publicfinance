package com.funds.controllers.jibenshezhi.JieSuanFangShi;


import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.funds.models.jibenshezhi.JieSuanFangShi.*;


public class ZenJiaServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		String dm = request.getParameter("dm");
		String mc = request.getParameter("mc");
		
		JieSuanFangShiSheZhi SheZhi = new JieSuanFangShiSheZhi(dm, mc);
		java.util.ArrayList<String> errs = SheZhi.isValid();
		boolean isZenJiaSuccess = SheZhi.ZenJia();
		
		if(isZenJiaSuccess){
			response.sendRedirect("../servlet/JieSuanFangShiSheZhiServlet");
		}else{
			response.sendRedirect("../funds/nook.html");
		}
		
	}

}
