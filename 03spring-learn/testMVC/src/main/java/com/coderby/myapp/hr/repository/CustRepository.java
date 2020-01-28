package com.coderby.myapp.hr.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.coderby.myapp.hr.model.CustVO;

@Repository
public class CustRepository implements ICustRepository {
	@Autowired
	JdbcTemplate jdbcTemplate;
	private class CustMapper implements RowMapper<CustVO> {
		@Override
		public CustVO mapRow(ResultSet rs, int count) 
				throws SQLException {
			CustVO cust = new CustVO();
			cust.setCustomerId(rs.getInt("customer_id"));
			cust.setName(rs.getString("name"));
			cust.setEmail(rs.getString("email"));
			cust.setGender(rs.getString("gender"));
			cust.setBirth(rs.getInt("birth"));
			return cust;
		}			
	}
	
	@Override
	public int getCustCount() {
		String sql = "select count(*) from customer";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public int getCustCount(int deptid) {
		String sql = "select count(*) from customer where department_id=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, deptid);
	}

	@Override
	public List<CustVO> getCustList() {
		String sql = "select * from customer";
		return jdbcTemplate.query(sql, new RowMapper<CustVO>() {
			@Override
			public CustVO mapRow(ResultSet rs, int count) 
					throws SQLException {
				CustVO cust = new CustVO();
				cust.setCustomerId(rs.getInt("customer_id"));
				cust.setName(rs.getString("name"));
				cust.setEmail(rs.getString("email"));
				cust.setGender(rs.getString("gender"));
				cust.setBirth(rs.getInt("birth"));
				return cust;
			}
		});
	}

	@Override
	public CustVO getCustInfo(int custid) {
		String sql = "select customer_id, name, email, gender, birth "
				+ "from customer where customer_id=?";		
		return jdbcTemplate.queryForObject(sql, new CustMapper(), custid);
	}
}//end class