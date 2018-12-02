package com.icss.dkgy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * jdbc�ķ�װ
 * 
 * @author rgw
 */
public class BaseDao {
	protected Connection conn;

	// ������
	public void openConnection() throws Exception {
		try {

			if (conn == null || conn.isClosed()) {
				// 1������JDBC��������
				Class.forName("com.mysql.jdbc.Driver");
				// 2���������ݿ�����Connection
//				String url = "jdbc:mysql://localhost:3306/dankegongyu?useUnicode=true&characterEncoding=utf8";
//				String userName = "root";
//				String pwd = "12345";
//				
				//�ι�ΰ���ݿ� 
				String url = "jdbc:mysql://localhost:3307/dankegongyu?useUnicode=true&characterEncoding=utf8";
				String userName = "root";
				String pwd = "r3837514";
				//����dao��ע�ʹ˲���
				conn = DriverManager.getConnection(url, userName, pwd);
			}
		} catch (Exception e) {
			throw e;
		}
	}

	// �ر�����
	public void closeConnection() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// ��������
	public void beginTransaction() throws Exception {
		openConnection();
		conn.setAutoCommit(false); // �ֶ��ύ����
	}

	// �ύ����
	public void commit() throws SQLException {
		if (conn != null) {
			conn.commit(); // �ֶ��ύ����
		}
	}

	// �ع�����
	public void rollback() throws SQLException {
		if (conn != null) {
			conn.rollback(); // �ֶ��ύ����
		}
	}
}