package com.org.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class Expensses
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
	@Column(nullable = false)
  private String NameOfExpensses;
	
  private String date;
  
  private String Time;
  
  private float price;
  @JoinColumn
  @ManyToOne(fetch = FetchType.LAZY)
  private User user;

public float getPrice() {
	return price;
}

public void setPrice(float price) {
	this.price = price;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getNameOfExpensses() {
	return NameOfExpensses;
}

public void setNameOfExpensses(String nameOfExpensses) {
	NameOfExpensses = nameOfExpensses;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

public String getTime() {
	return Time;
}

public void setTime(String time) {
	Time = time;
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}
  
  
}
