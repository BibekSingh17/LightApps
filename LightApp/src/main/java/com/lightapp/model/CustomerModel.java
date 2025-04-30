package com.lightapp.model;

public class CustomerModel {
	
	private String firstname;
	private String lastname;
	private String email;
	private String phonenumber;
	private String address;
	private String gender;
	private String username;
	private String password;
	private String userrole;
	
	public CustomerModel() {
		
	}
	
	public CustomerModel(String firstname, String lastname, String email, String phonenumber, String address, String gender, String username, String password, String userrole) {
		this.firstname=firstname;
		this.lastname=lastname;
		this.email=email;
		this.phonenumber=phonenumber;
		this.address=address;
		this.gender=gender;
		this.username=username;
		this.password=password;
		this.userrole=userrole;
		
	}
	
	// setter method of firstname
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
    // getter method of first name
 	public String  getFirstname() {
         return firstname;
     }
 	
	// setter method of last name
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    
    // getter method of last name
 	public String  getLastname() {
         return lastname;
     }
	
	// setter method of email
    public void setEmail(String email) {
        this.email = email;
    }
    
    // getter method of productID
 	public String  getEmail() {
         return email;
     }
 	
	// setter method of phonenumber
    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }
    
    // getter method of phonenumber
 	public String  getPhonenumber() {
         return phonenumber;
     }
 	
	// setter method of address
    public void setAddress(String address) {
        this.address = address;
    }
    
    // getter method of address
 	public String  getAddress() {
         return address;
     }
 	
	// setter method of gender
    public void setGender(String gender) {
        this.gender = gender;
    }
    
    // getter method of gender
 	public String  getGender() {
         return gender;
     }
 	
	// setter method of username
    public void setUsername(String username) {
        this.username = username;
    }
    
    // getter method of username
 	public String  getUsername() {
         return username;
     }
 	
	// setter method of password
    public void setPassword(String password) {
        this.password = password;
    }
    
    // getter method of password
 	public String  getPassword() {
         return password;
     }
 	
	// setter method of user role
    public void setUserrole(String userrole) {
        this.userrole = userrole;
    }
    
    // getter method of user role
 	public String  getUserrole() {
         return userrole;
     }
 	
}
