<%@ page language="java" contentType="text/html; charset=utf-8"
	import="org.apache.struts.Globals,java.io.PrintWriter"%>

<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>

<%
String path = request.getContextPath();
%>

<center>
<table border="0" height="500px"><tr height="100%" ><td valign="middle">
<div class="bubble_bg" style="width:500px" align="left">
<div class="rounded_ul">
<div class="rounded_ur">
<div class="rounded_ll">
<div class="rounded_lr">
	<div style="padding:5px 15px 5px;color:white">
		<strong><bean:message key="system.error" /></strong>
	</div>

<div style="margin:0px 2px 2px 2px;background-color:white">

	<div style="width:100%;height:100%">
		<logic:present name="<%=Globals.EXCEPTION_KEY%>">
			<textarea name="ecp" readonly="true" wrap="OFF" style="height:240px;width:99%">
				<%	
					Exception e = (Exception) request.getAttribute(Globals.EXCEPTION_KEY);
					e.printStackTrace(new PrintWriter(out));
				%>
			</textarea>
		</logic:present>
	</div>						
</div>
<div align="right" style="padding-right:20px">
	<a href="<%=request.getHeader("Referer")%>"><bean:message key="button.return"/></a>
								&nbsp;&nbsp;<a href="javascript:window.close();"><bean:message key="button.exit"/></a>
</div>
<span style="font-size:0.1em">&nbsp;</span>
</div>
</div>
</div>
</div>
</div>
</td></tr></table>
</center>