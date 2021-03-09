<%@ page contentType="text/html; charset=utf-8" language="java"
	import="org.apache.struts.Globals,java.util.*,java.io.PrintWriter"%>
	
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>

<%
String path = request.getContextPath();

String r = request.getHeader("Referer");

Cookie ck = new Cookie("jaype.chainPoint",r==null?"":r);
ck.setPath("/");
response.addCookie(ck);
%>

<div style="padding:5px 15px 5px;color:white"><strong><bean:message
	key="system.security" /></strong></div>
<div style="margin:0px 2px 2px 2px;background-color:white">
<div style="margin-left:2px;width:505px;height:260px">
	<img src="<%=path %>/images/lock-b.jpg" style="display:block;float:left"/>
	
	<bean:write name="<%=Globals.EXCEPTION_KEY%>" property="message" />
</div>
<div align="right" style="padding-right:20px">
	<a href='<%=request.getHeader("Referer")==null?path+"/index.shtml":request.getHeader("Referer")%>'><bean:message
	key="button.return" /></a> &nbsp;&nbsp;
	<a href="<%=path %>/index.shtml"><bean:message key="button.login" /></a> &nbsp;&nbsp;
	<a href="javascript:window.close();"><bean:message key="button.exit" /></a>
</div>
</div>

