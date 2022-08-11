package com.chainsys.sportsclub.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
@Entity
@Table(name = "Staff")
public class Staff {
	@Id
	@SequenceGenerator(name="staff_id", sequenceName="staff_id", allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="staff_id")
	@Column(name = "STAFF_ID")
//	@NotEmpty(message = "*Please enter value")
private int staffId;
/*
 * @Column(name = "STAFF_NAME")
 * 
 * @Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
 * 
 * @NotBlank(message = "*Name can't be Empty")
 * 
 * @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
 */
private String staffName;

/*
 * @Column(name = "SALARY")
 * 
 * @Min(value = 0, message="*Salary should be in positive numbers")
 */
private float salary;
	@Column(name = "JOINING_DATE")
private Date joiningDate;
	@Column(name = "DATE_OF_BIRTH")
private Date dateOfBirth;
	@Column(name = "CONTACT")
	/* @Digits(message = "*Invalid number.", integer = 10, fraction = 0) */
private long contact;
	@Column(name = "ADDRESS")
	/* @NotEmpty(message = "*Please enter Address") */
private String address;
	@Column(name = "STAFF_ROLE")
private String staffRole;
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	public Date getJoiningDate() {
		return joiningDate;
	}
	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStaffRole() {
		return staffRole;
	}
	public void setStaffRole(String staffRole) {
		this.staffRole = staffRole;
	}
	public String getCoachingSports() {
		return coachingSports;
	}
	public void setCoachingSports(String coachingSports) {
		this.coachingSports = coachingSports;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "COACHING_SPORTS")
private String coachingSports;
	
	@Column(name = "EMAIL")
	/*
	 * @Email(message = "*Email is not valid")
	 * 
	 * @NotEmpty(message = "*Please enter email")
	 */
private String email;

}