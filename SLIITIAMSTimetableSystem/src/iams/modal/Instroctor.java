package iams.modal;

public class Instroctor {
	
	private String empno,iname,email,phone,department;

	
	
	public Instroctor() {
		
	}
	
	public Instroctor(String empno, String iname, String email, String phone, String department) {
		super();
		this.empno = empno;
		this.iname = iname;
		this.email = email;
		this.phone = phone;
		this.department = department;
	}


	public Instroctor(String empno, String email, String phone, String department) {
		super();
		this.empno = empno;
		this.email = email;
		this.phone = phone;
		this.department = department;
	}

	public String getEmpno() {
		return empno;
	}

	public void setEmpno(String empno) {
		this.empno = empno;
	}

	public String getIname() {
		return iname;
	}

	public void setIname(String iname) {
		this.iname = iname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}
	

	
}
