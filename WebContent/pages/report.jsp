<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>GENIISYS - General Insurance Information System - ${reportTitle}</title> 
</head>
<body marginheight="0" marginwidth="0" >
	<embed id="reportPdf" autosize="true" autostart="true" autoplay="true" width="100%" height="100%" name="plugin" src="${reportUrl}" type="application/pdf">
	<%-- ${reportUrl} --%>
</body>
<script type="text/javascript">
	window.fullScreen;
	document.getElementById("reportPdf").width = window.innerWidth; 
	document.getElementById("reportPdf").height = window.innerHeight; 
</script>
</html>