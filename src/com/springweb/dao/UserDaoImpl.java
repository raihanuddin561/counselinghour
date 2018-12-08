package com.springweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spirngweb.encoder.PasswordEncoderService;
import com.spirngweb.model.User;

@Repository
public class UserDaoImpl {
	private DataSource dataSource;
	private NamedParameterJdbcTemplate jdbc;

	public UserDaoImpl() {
		System.out.println("user dao seccessfully done");
	}

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Transactional
	public boolean Insert(User user) {
		String password=(new PasswordEncoderService().encoder(user.getPassword()));
		user.setPassword(password);
		BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(user);
		String sql = "insert into users(username,password,email,enabled) values(:username,:password,:email,:enabled)";
		String sql1 = "insert into authorities(username,authority)values(:username,:authority)";
		jdbc.update(sql, param);
		return jdbc.update(sql1, param) == 1;
	}

	public List<User> getusers() {
		String sql="select * from users,authorities where users.username=authorities.username";
      return jdbc.query(sql,BeanPropertyRowMapper.newInstance(User.class));
	}

	public List<User> getContactList() {
		// TODO Auto-generated method stub
		String sql="select users.username,email from users,authorities where users.username=authorities.username and authorities.authority != 'ROLE_ADMIN'";
	      return jdbc.query(sql,BeanPropertyRowMapper.newInstance(User.class));
	}

	public String getEmail(String reciever) {
		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("username", reciever);
		String sql="select email from users where username=:username";
	      return jdbc.query(sql, param, new ResultSetExtractor<String>() {

			@Override
			public String extractData(ResultSet rs) throws SQLException, DataAccessException {
				if(rs.next()) {
					return rs.getString("email");
				}
				return null;
			}
		});
		
	}
	

}
