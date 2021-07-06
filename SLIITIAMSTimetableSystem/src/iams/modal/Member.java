package iams.modal;

public class Member {
	private String empNo,userName,userType,password,repassword;

	
	
	public Member() {
		super();
		
	}

	public Member(String empNo, String userName, String userType, String password, String repassword) {
		super();
		this.empNo = empNo;
		this.userName = userName;
		this.userType = userType;
		this.password = password;
		this.repassword = repassword;
	}

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
		 
		  
		 

}
