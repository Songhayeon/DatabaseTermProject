<%@ page contentType = "text/html; charset=euc-kr" %>
<%@page import="bean.LoginDao"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%
boolean status=LoginDao.validate(obj);
System.out.println(status);
if(status){
	String id= obj.getEmail();
	session.setAttribute("sessionID",id);
	if(obj.getRadioValue() == 1)	//����
	{
		response.sendRedirect("../roundsman/sample.jsp");
	}
	else	//����
	{
		
		response.sendRedirect("../CustomerMain/customerm.jsp");
	}
	
}
else
{
out.print("Sorry, id or password error");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
%>