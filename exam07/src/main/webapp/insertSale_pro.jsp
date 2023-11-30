<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam07.*" %>

<%
	DAO dao = new DAO();
	DTO dto = new DTO();
	dto.saleno = request.getParameter("saleno");
	dto.oildate = request.getParameter("oildate");
	dto.oiltype = request.getParameter("oiltype");
	dto.amount = request.getParameter("amount");
	dto.paytype = request.getParameter("paytype");
	dto.custno = request.getParameter("custno");
	if (dto.paytype.equals("1")) {
		dto.creditcard = null;
	} else {
		dto.creditcard = request.getParameter("creditcard1") + request.getParameter("creditcard2") + request.getParameter("creditcard3") + request.getParameter("creditcard4");
	}
	dto.oilcost = request.getParameter("oilcost");
	
	dao.insertSale(dto);
%>

<script>
	location.href="index.jsp";
</script>