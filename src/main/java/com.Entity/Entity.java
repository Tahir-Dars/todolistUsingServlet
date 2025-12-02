// The package is set default 
package com.entity;

public class Entity {
  private int id;
	private String todo;
	private String timeWindow;
	private String Status;
  
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTodo() {
		return todo;
	}

	public void setTodo(String todo) {
		this.todo = todo;
	}

	public String getTimeWindow() {
		return timeWindow;
	}

	public void setTimeWindow(String timeWindow) {
		this.timeWindow = timeWindow;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	@Override
	public String toString() {
		return "Entity [id=" + id + ", todo=" + todo + ", timeWindow=" + timeWindow + ", Status=" + Status + "]";
	}

}
