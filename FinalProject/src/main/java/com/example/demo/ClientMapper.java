package com.example.demo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;



public class ClientMapper implements RowMapper<Client> {
	@Override
	public Client mapRow(ResultSet rs, int rowNum) throws SQLException{
		Client cli = new Client();
		cli.setSeq(rs.getInt("seq"));
		cli.setTablenum(rs.getString("tablenum"));
		cli.setBooktime(rs.getInt("booktime"));
		cli.setPeople(rs.getInt("people"));
		cli.setName(rs.getString("name"));
		cli.setPhonenum(rs.getString("phonenum"));
		cli.setDate(rs.getDate("date"));
		return cli;
	}

}