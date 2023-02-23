package cn.techtutorial.model;

public class User {
	private int id;
	private String name;
	private String email;
	private String password;
	private String username;
	private String phoneno;

	public User() {
	}

	public User(int id, String name, String email, String password,String username, String phoneno) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.username = username;
		this.phoneno = phoneno;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	public String getusername() {
		return username;
	}

	public void setusername(String username) {
		this.username = username;
	}
	
	public String getphoneno() {
		return phoneno;
	}

	public void setphoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	
	

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", username="+ username +",phoneno="+ phoneno +"  ]";
	}
	
}
