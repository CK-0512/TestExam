package model;

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
	
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "HRDKOREA", "1234");
			System.out.println(conn);
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return conn;
	}
	
	public List<DTO> productView() {
		List<DTO> list = new ArrayList<>();
		String sl = "select * from tbl_product_201909";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sl);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				DTO dto = new DTO();
				dto.p_code = rs.getString(1);
				dto.p_name = rs.getString(2);
				dto.p_size = rs.getString(3);
				dto.p_type = rs.getString(4);
				dto.p_price = rs.getInt(5);
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
