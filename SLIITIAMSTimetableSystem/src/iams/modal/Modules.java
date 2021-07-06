package iams.modal;

public class Modules {

	private String modulecode, moduleName,academicYearSem,lectureIncharge;

	
	
	public Modules() {
			
	}


	public Modules(String moduleName, String academicYearSem, String lectureIncharge) {
		super();
		this.moduleName = moduleName;
		this.academicYearSem = academicYearSem;
		this.lectureIncharge = lectureIncharge;
	}


	public Modules(String modulecode, String moduleName, String academicYearSem, String lectureIncharge) {
		super();
		this.modulecode = modulecode;
		this.moduleName = moduleName;
		this.academicYearSem = academicYearSem;
		this.lectureIncharge = lectureIncharge;
	}

	public String getModulecode() {
		return modulecode;
	}

	public void setModulecode(String modulecode) {
		this.modulecode = modulecode;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public String getAcademicYearSem() {
		return academicYearSem;
	}

	public void setAcademicYearSem(String academicYearSem) {
		this.academicYearSem = academicYearSem;
	}

	public String getLectureIncharge() {
		return lectureIncharge;
	}

	public void setLectureIncharge(String lectureIncharge) {
		this.lectureIncharge = lectureIncharge;
	}
	
	
	
	
	
	
}
