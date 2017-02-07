package br.com.caelum.tarefas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() throws SQLException {
		System.out.println("conectando ...");

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/fj21", "admin", "admin");
		} catch (SQLException e) {
			System.out.println("!!!Falhou Conexão!!!");
			throw new SQLException(e);
		}
		
	}

}
