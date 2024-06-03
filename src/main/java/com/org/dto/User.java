package com.org.dto;

import java.util.List;

import javax.persistence.Id;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class User 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
  private int Id;
  
	@Column(nullable = false)
  private String Name;
	
  private int age;
  
  private String address;
  
	@Column(unique = true , nullable = false)
  private String email;
  
	@Column(nullable = false)
  private String password;
  
  @OneToMany(cascade = CascadeType.ALL , mappedBy = "user" , fetch = FetchType.LAZY)
  private List<Expensses> expensses;
  @OneToMany(cascade = CascadeType.ALL , mappedBy = "user"  , fetch = FetchType.LAZY)
  private List<Salary> salary;

  


public List<Salary> getSalary() {
	return salary;
}

public void setSalary(List<Salary> salary) {
	this.salary = salary;
}

public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public int getId() {
	return Id;
}

public void setId(int id) {
	Id = id;
}

public String getName() {
	return Name;
}

public void setName(String name) {
	Name = name;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public List<Expensses> getExpensses() {
	return expensses;
}

public void setExpensses(List<Expensses> expensses) {
	this.expensses = expensses;
}
  
}
