<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>项目管理系统 </title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 

</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function  selectAll(){
	var checkObj = document.all("checkOption");
	for(var i = 0;i<checkObj.length;i++){
		checkObj[i].checked = true;

	}
}
function unselectAll(){
	var checkObj = document.all("checkOption");
	for(var i = 0;i<checkObj.length;i++){
		if(checkObj[i].checked == true) checkObj[i].checked = false;
		else checkObj[i].checked = true;

	}
}

function deleteMany(){
document.getElementById("deleteMany").submit();
}
</SCRIPT>

<body>
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="images/nav04.gif">
          
		   <span style="margin-left:30px;" class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
	              <input type="button" onclick="deleteMany()" value="删除所选项目信息"/>
	              <button type="button" onclick="window.location='<%=request.getContextPath() %>/files/addjiedaobanguanliyuan.jsp'">添加项目</button>
	
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

          	 <tr>
           
          	 </tr>
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp; 街道管理信息 &nbsp;</td>
                    </tr>
                  <tr>
				    <td width="5%" align="center" bgcolor="#EEEEEE">选择</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">账号</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">密码</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">街道办名称</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">街道办负责人名称</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">电话</td>
	       <td width="12%" align="center" bgcolor="#EEEEEE">操作</a>
	      
                  </tr>
           <form id="deleteMany" action="deleteManyOffice" method="post">
         <s:iterator value="#request.listOffices" id="lo">
                   <tr align="center">
				   <td bgcolor="#FFFFFF"><input type="checkbox" name="checkOption" value="<s:property
															value='#lo.officeId' />"/></td>
                    <td height="20" bgcolor="#FFFFFF"><s:property value="#lo.User.userUsername"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#lo.User.userPassword"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#lo.officeName"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#lo.User.userName"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#lo.User.userPhone"/></td>
	       <td bgcolor="#FFFFFF"><s:a href="deleteOffice?office.officeId=%{#lo.officeId}">删除</s:a>|<s:a href="editOffice?office.officeId=%{#lo.officeId}">编辑</s:a>
		</tr>
		</s:iterator>
       </form>
	
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      


</body>
</html>
