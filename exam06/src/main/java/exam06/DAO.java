package exam06;

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
	
	public List<DTO> viewMember() {
		List<DTO> list = new ArrayList<>();
		String sql = "select m.*, p.p_tel1, p.p_tel2, p.p_tel3 from tbl_member_202005 m inner join tbl_party_202005 p on m.p_code = p.p_code";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				DTO dto = new DTO();
				dto.m_no = rs.getString(1);
				dto.m_name = rs.getString(2);
				dto.p_code = rs.getString(3);
				dto.p_school = rs.getString(4);
				dto.m_jumin = rs.getString(5);
				dto.m_city = rs.getString(6);
				dto.p_tel = rs.getString(7) + "-" + rs.getString(8) + "-" + rs.getString(9);
				list.add(dto);
				System.out.println(list.size());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
