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
<%@page import="com.model.mhs.DBBiodata"%>
<%
	String nim=request.getParameter("nim");
	String nama=request.getParameter("nama");
	String jk=request.getParameter("jk");
	String tmp_lahir=request.getParameter("tmp_lahir");
	String tgl_lahir=request.getParameter("tgl_lahir");
	String alamat=request.getParameter("alamat");
	
	DBBiodata DBBiodata = new DBBiodata();
	DBBiodata.insertBiodata(nim, nama, jk, tmp_lahir, tgl_lahir, alamat);
%>
</body>
</html>