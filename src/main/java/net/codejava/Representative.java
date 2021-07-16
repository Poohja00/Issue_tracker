package net.codejava;

import javax.validation.constraints.Pattern;
import java.util.Date;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

public class Representative {
	@Size(min = 3, max = 50)
	private String firstname;
	
	@Size(min = 3, max = 50)
	private String lastname;
	
	
	@NotBlank
	private String gender;
	
	@NotBlank
	@Size(min=0,max=10)
	@Pattern(regexp="(^$|[0-9]{10})")
	private String contactNumber;

	
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date birthday;
	
	
	
	@NotBlank
	private String rep;
	
	@Size(min = 8, max = 15)
	private String password;
	
	//Getter and Setter

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getRep() {
		return rep;
	}

	public void setRep(String rep) {
		this.rep = rep;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Representative [firstname=" + firstname + ", lastname=" + lastname + ", gender=" + gender
				+ ", contactNumber=" + contactNumber + ", birthday=" + birthday + ", rep=" + rep + ", password="
				+ password + "]";
	}
	
	
	
	
	



	
}



