<%@ page language="java" pageEncoding="UTF-8" import = "java.util.ArrayList" %>
<%@ page import = "com.accounts.models.Acc"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<title>公共财政账务处理</title>
		<link rel="stylesheet" type="text/css" href="../css/subMenu.css" />
		<script type="text/javascript" src="../js/jquery-1.2.2.js"></script>
		<script type="text/javascript" src="../js/jquery.subMenu.js"></script>
		<script type="text/javascript" src="../js/jquery.cookie.js"></script>
		<script type="text/javascript">
		var Mysubmenu=null;
		$(function(){
		Mysubmenu=$("#my_menu").submenu({oneSmOnly:false,speed:500,expandNum:5,savestatus:true});	
		})
		</script>
		<link href="../css/yusuan.css" media="screen" rel="Stylesheet" type="text/css" />
		
	</head>
	<body>
        <!--主标题-->
		<div id="maintitle">
			<div class="zuobiaoti" id="tupian">
				<img src="../pic/images/yusuan.gif" />
			</div>
			<div class="zuobiaoti" id="dabiaoti">
				<p>公共财政</p>
			</div>
			<div class="zuobiaoti" id="fubiaoti">
				<!-- 输入自己子系统的名称-->
				<p>—账务处理系统</p>
			</div>
			<div id="system"><a>退出 |</a><a>重新登陆|</a><a>关于</a></div>
		</div>
		
		<!--内容-->
		<div id="zhukuai">
			<!-- 菜单 -->
			<div class="pingpu" id="caidan">		
				<table class="zhuti" style="width: 100%">
					<tr>
						<div style="float: left" id="my_menu">
						      <div>
						        <span>帐套管理</span>
							        <a href="../servlet/DisplayDanWeiInformationServlet">单位设置</a>
							        <a href="">用户管理</a>
							        <a href="">帐套设置</a>
							        <a href="">科目设置</a>
							        <a href="ztcx.html">帐套查询</a>
							       
						      </div>
						      <div>
						        <span>初始化</span>
									<a href="">初始化科目余额</a>
							        <a href="">初始化完成确认</a>
							        
						      </div>
						     
						      <div>
						        <span>凭证处理</span>
									<a href="">凭证录入</a>
							        <a href="">凭证审核</a>
							        <a href="">查询凭证</a>
							        <a href="">凭证汇总</a>
							         <a href="">重排凭证编号</a>
							         
							         
						      </div>
						      <div>
						        <span>期末处理</span>
							        <a href="">记账</a>
							        <a href="">月结</a>
							        <a href="">反记账</a>
							        <a href="">反月结</a>
							       
						      </div>
						      <div>
						        <span>系统服务</span>
									<a href="">选择更换单位</a>
							        <a href="">当前操作信息</a>
							        <a href="">帮助</a>
									<a href="">关于</a>
							        <a href="">退出</a>    
							        
						      </div>
						      <div>
						        
							</div>
						</td>
					</tr>
				</table>
			</div>	
		
			<div id="neirong" class="pingpu">
				<div id="neirongbiaoti">
					<h2>帐套管理——单位设置</h2><hr />
				</div>
				<div class="zhuti">					
					<div class="biaofenkuai"id="zhubiao">
						<div id="yibiao">
															
						    <div id="workspace">
        	<h2 id="lrfpb">单位信息</h2>
        	<table>
        		<tr>
        			<td>选择帐套类型：</td>
        			<td><select  size="1">
				        	<option value="hk"></option> 
									<option value="tw">1</option> 
									<option value="cn">2</option> 
									<option value="us">3</option> 
									<option value="ca">4</option> 
				        	
				       </select>
				    </td>
				    <td>
				    	
				    </td>
                </tr>
                
                
                
              <div id="biao">
              	<table border="2">
			<tr><th>帐套代码</th><th>单位名称</th></tr>
			
			 <%
						 	ArrayList<Acc> list = (ArrayList<Acc>)session.getAttribute("allAccountInfo");
						 	 
						 	 for(Acc a : list){				out.println("<tr><td>"+a.getDwdm()+"</td><td>"+a.getDwmc()+"</td></tr>");	
						 							}
						 %> 	
			
		</table>
              	
              </div>
             		
             	</table>	
						</div>
						<div id="anniu" >
							<input value="确认" type="button">&nbsp;
							<input value="退出" type="button">
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<!--页脚-->
		<div id="end" >
			2009 crosscloud
		</div>
	</body>
</html>