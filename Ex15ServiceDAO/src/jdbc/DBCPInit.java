package jdbc;

import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;


public class DBCPInit extends HttpServlet {
	private String address = "localhost:3306/";
	private String dbName = "mydb";
	private String username = "test";
	private String password = "a1b2c3d4!@#";
	
	@Override
	public void init() throws ServletException {
		loadJDBCDriver();
		initConnectionPool();
	}
	
	private void loadJDBCDriver() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch (ClassNotFoundException e) {
			throw new RuntimeException("Fail to load JDBC Driver", e);
		}
	}
	
	private void initConnectionPool() {
		String jdbcUrl = "jdbc:mysql://" + address + dbName +
						 "?useUnicode=true&characterEncoding=utf8&useTimezone=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		try {
			ConnectionFactory connFactory = new DriverManagerConnectionFactory(jdbcUrl, username, password);
			
			PoolableConnectionFactory poolableConnFactory = new PoolableConnectionFactory(connFactory, null);
			poolableConnFactory.setValidationQuery("SELECT 1");
			
			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
			poolConfig.setTimeBetweenEvictionRunsMillis(1000L * 60L * 5L); // 유효 커넥션 검사 주기
			poolConfig.setTestWhileIdle(true); // 풀에 보관 중인 커넥션이 유효한지 검사할지 여부
			poolConfig.setMinIdle(4); // 커넥션 최소 개수
			poolConfig.setMaxTotal(50); // 커넥션 최대 개수
			
			GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnFactory, poolConfig);
			poolableConnFactory.setPool(connectionPool);
			
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = (PoolingDriver)DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			driver.registerPool("example", connectionPool); // example : pool 이름 (DriverManager.getConnection 메서드 호출 시에도 같은 이름을 사용해야 함)
		}
		catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
