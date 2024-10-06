package edu.deakin.sit218.coachwebapp;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Client {

	@NotNull(message = "Name is required")
	@Size(min = 3, message = "Name must be at least 3 characters long")
	@Pattern(regexp = "^[A-Za-z\\s]+$", message = "Name can only contain letters and spaces")
	protected String name;

	@NotNull(message = "Age is required")
	@Min(value = 18, message = "You must be 18 years old or older")
	@Max(value = 120, message = "Vampires are not allowed")
	protected int age;

	@NotNull(message = "Email is required")
	@Pattern(regexp = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}", message = "Email must be valid")

	protected String email;

	@NotNull(message = "Message is required")
	@Size(max = 200, message = "Message can be a maximum of 200 characters long")
	@Pattern(regexp = "^[A-Za-z0-9\\s!@#*]+$", message = "Message can only contain letters, numbers, and allowed special characters (!@#*)")
	protected String message;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
