package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class SQLConnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-MIE6OUS;Database=QuanLyKhachSan;user=sa;password=123456;");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

}
