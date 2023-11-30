package exam07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "HRDKOREA", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void insertSale(DTO dto) {
		String sql = "insert into tbl_saleinfo_202010 values (?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.saleno);
			pstmt.setString(2, dto.oildate);
			pstmt.setString(3, dto.oiltype);
			pstmt.setString(4, dto.amount);
			pstmt.setString(5, dto.paytype);
			pstmt.setString(6, dto.custno);
			pstmt.setString(7, dto.creditcard);
			pstmt.setString(8, dto.oilcost);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<DTO> viewSaleAll() {
		List<DTO> list = new ArrayList<>();
		String sql = "select a.*, c.custname, c.custtel1, c.custtel2, c.custtel3\r\n"
				+ "    from (select s.saleno, s.oildate, o.oilname, s.amount, s.paytype, s.custno, s.creditcard, s.oilcost\r\n"
				+ "        from tbl_saleinfo_202010 s \r\n"
				+ "            left outer join tbl_oilinfo_202010 o\r\n"
				+ "                on s.oiltype = o.oiltype) a\r\n"
				+ "        left outer join tbl_custinfo_202010 c\r\n"
				+ "            on a.custno = c.custno";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DTO dto = new DTO();
				dto.saleno = rs.getString("saleno");
				dto.oildate = rs.getString("oildate");
				dto.oilname = rs.getString("oilname");
				dto.amount = rs.getString("amount");
				if (rs.getString("paytype").equals("1")) {
					dto.paytype = "현금";
				} else {
					dto.paytype = "카드";
				}
				if (rs.getString("custname") == null) {
					dto.custname = "비회원";
				} else {
					dto.custname = rs.getString("custname");
				}
				if (rs.getString("custno") == null) {
					dto.custno = "비회원";
				} else {
					dto.custno = rs.getString("custno");
				}
				if (rs.getString("custtel1") == null) {
					dto.custtel = "000-0000-0000";
				} else {
					dto.custtel = rs.getString("custtel1") + "-" + rs.getString("custtel2") + "-" + rs.getString("custtel3");
				}
				if (rs.getString("creditcard") == null) {
					dto.creditcard = "";
				} else {
					dto.creditcard = rs.getString("creditcard");
				}
				dto.oilcost = rs.getString("oilcost");
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<DTO> viewSale() {
		List<DTO> list = new ArrayList<>();
		String sql = "select s.oildate, o.oilname, count(s.oildate) cnt, sum(s.oilcost) oilcost\r\n"
				+ "    from tbl_saleinfo_202010 s\r\n"
				+ "        inner join tbl_oilinfo_202010 o\r\n"
				+ "            on s.oiltype = o.oiltype\r\n"
				+ "                group by s.oildate, o.oilname";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DTO dto = new DTO();
				dto.oildate = rs.getString("oildate");
				dto.oilname = rs.getString("oilname");
				dto.count = rs.getInt("cnt");
				dto.oilcost = rs.getString("oilcost");
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
