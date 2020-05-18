<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<%
	String a=request.getParameter("a");
	String b=request.getParameter("b");
	int a1=Integer.valueOf(a);
	int a2=Integer.valueOf(b);
	int hitung = a1+a2;
	out.print("Hasil penjumlahan "+a+" + "+b+" = "+hitung);
%>
</body>
</html>