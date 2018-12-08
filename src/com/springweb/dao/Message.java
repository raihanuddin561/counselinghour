package com.springweb.dao;

import java.io.Serializable;

public class Message implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String sender;
	private String message;
	//senders name;
	private String reciever;
	public Message() {
		
	}
	public Message(int id, String sender, String message, String reciever) {
		
		this.id = id;
		this.sender = sender;
		this.message = message;
		this.reciever = reciever;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getReciever() {
		return reciever;
	}
	public void setReciever(String reciever) {
		this.reciever = reciever;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", sender=" + sender + ", message=" + message + ", reciever=" + reciever + "]";
	}
	
	
	
}
