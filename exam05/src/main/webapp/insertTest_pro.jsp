<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam05.*" %>
<!DOCTYPE html>

<% 
	DTO dto = new DTO();
	dto.test_date = request.getParameter("test_date");
	dto.test_ampm = request.getParameter("test_ampm");
	dto.pollution = request.getParameter("pollution");
	dto.city_code = request.getParameter("city_code");
	dto.test_value = request.getParameter("test_value");
	
	DAO dao = new DAO();
	int row = dao.insertTest(dto);
%>