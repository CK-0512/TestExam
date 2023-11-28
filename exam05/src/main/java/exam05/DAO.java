package exam05;

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
			conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "HRDKOREA", "1234");
			System.out.println("conn : " + conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public List<DTO> viewCity() {
		List<DTO> list = new ArrayList<>();
		String sql = "select c.city_code, c.city_name, a.area_code, a.area_name, c.city_tel1, c.city_tel2, c.city_tel3, c.city_admin, c.city_level\r\n"
				+ "    from tbl_city_202005 c \r\n"
				+ "        inner join tbl_area_202005 a\r\n"
				+ "            on c.area_code = a.area_code\r\n"
				+ "                order by c.city_code asc";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				DTO dto = new DTO();
				dto.city_code = rs.getString(1);
				dto.city_name = rs.getString(2);
				dto.area_code = rs.getString(3);
				dto.area_name = rs.getString(4);
				dto.city_tel = rs.getString(5) + "-" + rs.getString(6) + "-" + rs.getString(7);
				dto.city_admin = rs.getString(8);
				if (Integer.valueOf(rs.getString(9)) == 1) {
					dto.city_level = "사원";
				} else if (Integer.valueOf(rs.getString(9)) == 2) {
					dto.city_level = "주임";
				} else if (Integer.valueOf(rs.getString(9)) == 3) {
					dto.city_level = "대리";
				} else if (Integer.valueOf(rs.getString(9)) == 4) {
					dto.city_level = "과장";
				}
				
				System.out.println(dto.city_level);
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int insertTest(DTO dto) {
		int row = 0;
		String sql = "insert into tbl_test_202005 values(?, ?, ?, ?, ?)";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.test_date);
			pstmt.setString(2, dto.test_ampm);
			pstmt.setString(3, dto.pollution);
			pstmt.setString(4, dto.city_code);
			pstmt.setString(5, dto.test_value);
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return row;
	}
}
