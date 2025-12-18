package lundi.matin.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
  public static final String DATABASE_URL = System.getenv("DATABASE_URL");
  public static final String DATABASE_USER = System.getenv("DATABASE_USER");
  public static final String DATABASE_PASSWORD = System.getenv("DATABASE_PASSWORD");

  public Connection getDBConnection() {
    try {
      return DriverManager.getConnection(DATABASE_URL, DATABASE_USER, DATABASE_PASSWORD);
    } catch (SQLException e ) {
      throw new RuntimeException("Got an exception when connecting to database : \n" + e);
    }
  }
}
