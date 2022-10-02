package models;

public class User {
	private int id;
	private String first_Name;
	private String last_Name;
	private String email;
	private String password;
	private String numTel;
	private String role;
	private String username;
	
	public User(int id, String username, String firstname, String lastname, String email, String role) {
		this.id=id;
		this.username=username;
		this.first_Name=firstname;
		this.last_Name=lastname;
		this.email=email;
		
		this.role=role;
		
		
	}
	public User(String username, String firstname, String lastname, String email, String role) {
		super();
		this.username=username;
		this.first_Name=firstname;
		this.last_Name=lastname;
		this.email=email;
		this.role=role;	
	}
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	public String getFirst_Name() {
		return first_Name;
	}
	
	public void setFirst_Name(String first_Name) {
		this.first_Name = first_Name;
	}
	
	public String getLast_Name() {
		return last_Name;
	}
	
	public void setLast_Name(String lastt_Name) {
		this.last_Name = lastt_Name;
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
	
	public String getNumTel() {
		return numTel;
	}
	
	public void setNumTel(String numTel) {
		this.numTel = numTel;
	}
	
	public String getRole() {
		return role;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
		
	public boolean isAdmin() {
		return role.equals(Role.ADMIN.name());
	}
	
	public boolean isProfesseur() {
		return role.equals(Role.PROFESSEUR.name());
	}
	
	public boolean isEtudiant() {
		return role.equals(Role.ETUDIANT.name());
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", first_Name=" + first_Name + ", last_Name=" + last_Name + ", email=" + email
				+ ", password=" + password + ", numTel=" + numTel + ", role=" + role + ", username=" + username + "]";
	}
	
}