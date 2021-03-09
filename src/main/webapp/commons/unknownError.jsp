<%@ page contentType="text/html; charset=utf-8" language="java" import="org.apache.struts.Globals,net.sf.jlue.exception.*" %>

<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>

<%
	String path=request.getContextPath();
%>

<div style="padding:5px 15px 5px;color:white">
	<strong><bean:message key="system.error" /></strong>
</div>
	
<div style="margin:0px 2px 2px 2px;background-color:white">

	<div style="width:100%;height:100%">
								<logic:present name="<%=Globals.EXCEPTION_KEY%>">
										 <textarea name="ecp" readonly="true" wrap="OFF" style="height:240px;width:99%"><%
													BaseException throwable=(BaseException)request.getAttribute(Globals.EXCEPTION_KEY);
					                                if(throwable!=null)
														throwable.printStackTrace(new java.io.PrintWriter(out));
												
											%></textarea>
								</logic:present>
	</div>
							
							
</div>
<div align="right" style="padding-right:20px">
	<a href="<%=request.getHeader("Referer")%>"><bean:message key="button.return"/></a>
								&nbsp;&nbsp;<a href="javascript:window.close();"><bean:message key="button.exit"/></a>
</div>