<%@ tag display-name="doAs"
	body-content="scriptless"
	pageEncoding="utf-8" 
	language="java"
	%>
<%@ tag import="javax.security.auth.*" %>
<%@ tag import="javax.security.auth.login.LoginContext" %>
<%@ tag import="net.sf.jlue.extra.domain.sys.User" %>
<%@ tag import="net.sf.jlue.security.*" %>

<%@ attribute name="actions" required="true"  type="java.lang.String"%>
<%@ attribute name="inverse" required="true"  type="java.lang.String"%>

<%----------------------
	JAAS-based authorization.
----------------------%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>

<%
User up = (User) session.getAttribute(UserPrincipal.USER_PRINCIPAL);

LoginContext lc = (LoginContext)session.getAttribute("loginContext");
boolean isPermissive = false;
String [] acts = actions.split(",");

try {
	Subject sub = lc.getSubject();
	Subject.doAs(sub, new ActionPrivileged(sub, acts));
	isPermissive = true;
} catch (Exception e) {
	isPermissive = false;
}
if((isPermissive && "false".equals(inverse)) || ("true".equals(inverse) && !isPermissive)){
%>
<jsp:doBody/>
<%}%>