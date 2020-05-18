<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Persamaan Kuadrat</title>
</head>
<body>
<%@page import="java.lang.Math"%>
<%
	
	double a=Double.valueOf(request.getParameter("a"));
	double b=Double.valueOf(request.getParameter("b"));
	double c=Double.valueOf(request.getParameter("c"));
	double x1, x2;
	
	double determinan = b*b-4*a*c;
	out.print("determinan = "+determinan);%><br><%
	
	if(determinan>0){
		x1 = (-b + Math.sqrt(determinan)) / (2*a);
		x2 = (-b - Math.sqrt(determinan)) / (2*a);
		out.print("x1 = "+x1+" dan x2 = "+x2);
	}
	else if(determinan==0){
		x1 = x2 = -b / (2*a);
		out.print("x1 = x2 = "+x1);
	}
	else{
		out.print("Akar-akar tidak real");
	}
%>
</body>
</html>