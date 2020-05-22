<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Input DB</title>
</head>
<body>
<form action="insertDB.jsp" method="post">
NIM <input type="text" name="nim"></input><br>
Nama<input type="text" name="nama"></input><br>
Jenis Kelamin
<input type="radio" id="Laki-laki" name="jk" value="laki-laki">
<label for="Laki-laki">Laki-laki</label>
<input type="radio" id="Perempuan" name="jk" value="perempuan">
<label for="Perempuan">Perempuan</label><br>
Tempat Lahir<input type="text" name="tmp_lahir"></input><br>
Tanggal Lahir<input type="date" name="tgl_lahir"></input><br>
Alamat<input type="text" name="alamat"></input><br>
<input type="submit" name="submit" value="tambah"></input>
</form>
</body>
</html>