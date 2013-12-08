package ustc.j2ee.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySqlHelper {

	public Connection getConnection() {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/test?user=root&password=root";
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public Statement getStatement() {
		Statement stmt = null;
		Connection conn = null;
		try {
			conn = getConnection();
			if(conn != null)
				stmt = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return stmt;
	}

	public ResultSet executeQuery(String sql) {
		ResultSet rs = null;
		Statement stmt = null;
		try {
			stmt = getStatement();
			if(stmt != null)
				rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int getAllCount(String sql) {
		int count = 0;
		ResultSet rs = null;
		Statement stmt = null;
		try {
			stmt = getStatement();
			if(stmt != null)
				rs = stmt.executeQuery(sql);
			if(rs != null){
				rs.last();
				count = rs.getRow();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			close(stmt);
		}
		return count;
	}

	
	public int executeUpdate(String sql){
		int row = 0;
		Statement stmt = null;
		Connection conn = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			row = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, stmt);
		}
		return row;
	}

	
	private void close(Connection conn ,Statement stmt){
		close(conn);
		close(stmt);
	}
	
	private void close(Connection conn ){
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			conn = null;
		}
	}
	
	private void close(Statement stmt){
		if(stmt != null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			stmt = null;
		}
	}
}
