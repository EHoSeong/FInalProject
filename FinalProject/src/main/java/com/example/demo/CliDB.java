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

	public void whole(Client cli) {
		String sql = "INSERT INTO project (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create1(Client cli) {
		String sql = "INSERT INTO seat1 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create2(Client cli) {
		String sql = "INSERT INTO seat2 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create3(Client cli) {
		String sql = "INSERT INTO seat3 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create4(Client cli) {
		String sql = "INSERT INTO seat4 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create5(Client cli) {
		String sql = "INSERT INTO seat5 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create6(Client cli) {
		String sql = "INSERT INTO seat6 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create7(Client cli) {
		String sql = "INSERT INTO seat7 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public void create8(Client cli) {
		String sql = "INSERT INTO seat8 (tablenum, people, booktime, name, phonenum) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cli.getTablenum(), cli.getPeople(), cli.getBooktime(), cli.getName(),
				cli.getPhonenum());
	}

	public List<Client> select() {
		String sql = "select * from project ";
		List<Client> cli = jdbcTemplate.query(sql, new ClientMapper());
		return cli;
	}

	public List<Client> select1() {
		String sql = "select * from seat1 ";
		List<Client> cli1 = jdbcTemplate.query(sql, new ClientMapper());
		return cli1;
	}

	public List<Client> select2() {
		String sql = "select * from seat2 ";
		List<Client> cli2 = jdbcTemplate.query(sql, new ClientMapper());
		return cli2;
	}

	public List<Client> select3() {
		String sql = "select * from seat3 ";
		List<Client> cli3 = jdbcTemplate.query(sql, new ClientMapper());
		return cli3;
	}

	public List<Client> select4() {
		String sql = "select * from seat4 ";
		List<Client> cli4 = jdbcTemplate.query(sql, new ClientMapper());
		return cli4;
	}

	public List<Client> select5() {
		String sql = "select * from seat5 ";
		List<Client> cli5 = jdbcTemplate.query(sql, new ClientMapper());
		return cli5;
	}

	public List<Client> select6() {
		String sql = "select * from seat6 ";
		List<Client> cli6 = jdbcTemplate.query(sql, new ClientMapper());
		return cli6;
	}

	public List<Client> select7() {
		String sql = "select * from seat7 ";
		List<Client> cli7 = jdbcTemplate.query(sql, new ClientMapper());
		return cli7;
	}

	public List<Client> select8() {
		String sql = "select * from seat8 ";
		List<Client> cli8 = jdbcTemplate.query(sql, new ClientMapper());
		return cli8;
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

	public int delete(String phonenum) {
		String sql = "delete from project where phonenum=?";
		return jdbcTemplate.update(sql, phonenum);
	}
}
