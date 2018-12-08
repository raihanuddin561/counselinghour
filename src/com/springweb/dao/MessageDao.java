package com.springweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("messageDao")
public class MessageDao {
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<Message> getMessages() {
		return jdbc.query("select * from messages", new RowMapper<Message>() {

			public Message mapRow(ResultSet rs, int rowNum) throws SQLException {
				Message message = new Message();
				message.setId(rs.getInt("id"));
				message.setSender(rs.getString("sender"));
				message.setReciever(rs.getString("reciever"));
				message.setMessage(rs.getString("message"));
				
				return message;
			}

		});

	}

	public Message getMessage(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		return jdbc.queryForObject("select * from messages where id=:id", params, new RowMapper<Message>() {

			public Message mapRow(ResultSet rs, int rowNum) throws SQLException {
				Message message = new Message();
				message.setId(rs.getInt("id"));
				message.setSender(rs.getString("sender"));
				message.setReciever(rs.getString("reciever"));
				message.setMessage(rs.getString("message"));
				return message;
			}

		});

	}

	public boolean delete(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		return jdbc.update("delete from messages where id = :id", params) == 1;
	}

	public boolean create(Message message) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(message);
		return jdbc.update(
				"insert into messages(sender,reciever,message) values(:sender,:reciever,:message)",
				params) == 1;
	}

	public boolean update(Message message) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(message);
		return jdbc.update(
				"update messages set sender=:sender,reciever=:reciever, message=:message where id = :id",
				params) == 1;

	}

	public List<Message> getMessage(String username) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("reciever", username);
		return jdbc.query("select * from messages where reciever=:reciever", params, new RowMapper<Message>() {

			public Message mapRow(ResultSet rs, int rowNum) throws SQLException {
				Message message = new Message();
				message.setId(rs.getInt("id"));
				message.setSender(rs.getString("sender"));
				message.setReciever(rs.getString("reciever"));
				message.setMessage(rs.getString("message"));
				return message;
			}

		});
		
	}
}
