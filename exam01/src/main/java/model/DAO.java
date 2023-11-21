package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "track2_12", "1234");
			System.out.println(conn);
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return conn;
	}
	
	public int test() {
		int row = 0;
		String sql = "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return row;
	}
}
