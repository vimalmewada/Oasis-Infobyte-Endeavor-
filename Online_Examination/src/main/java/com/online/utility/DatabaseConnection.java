package com.online.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private static DatabaseConnection instance;
	private Connection connection;
	private String url = "jdbc:mysql://localhost:3306/exam?allowPublicKeyRetrieval=true&autoReconnect=true&useSSL=false";
	private String username = "root";
	private String password = "vimal";

	private DatabaseConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.connection = DriverManager.getConnection(url, username, password);
			//System.out.println("Sucessfully connection build");
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
			System.out.println("Database Connection Creation Failed : " + ex.getMessage());
		}
	}

	public Connection getConnection() {
		return connection;
	}

	public static DatabaseConnection getInstance() {
		try {
			if (instance == null) {
				instance = new DatabaseConnection();
			} else if (instance.getConnection().isClosed()) {
				instance = new DatabaseConnection();
			}
		} catch (Exception e) {
			e.printStackTrace();
			
			return null;
		}

		return instance;
	}
        
}
