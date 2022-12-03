package com.example.demo;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class CliDB {
	private JdbcTemplate jdbcTemplate;
	@Autowired
	public void setDataSource(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	public void create(Client cli) {
		String sql = "INSERT INTO project (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(), cli.getPhonenum());
	}
	public List<Client> select() {
		String sql = "select * from project";
		List<Client> cli = jdbcTemplate.query(sql, new ClientMapper());
		
		
		return cli;
	}

	public Client select(String phonenum) {
		String sql = "select * from project where phonenum=?";
		
		Client cli = jdbcTemplate.queryForObject(sql, new ClientMapper(), phonenum);
		
		return cli;
	}
	
	public Client select(int tablenum) {
		String sql = "select * from project where tablenum=?";
		
		Client cli = jdbcTemplate.queryForObject(sql, new ClientMapper(), tablenum);
		
		return cli;
	}
}
