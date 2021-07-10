package iams.modal;

/**
 * Entity class related to the TimeTable
 * 
 * @author Hasindu Dahanayake
 *
 */
public class TimeTable {

	private Integer id;
	private String startTime;
	private String endTime;
	private String day;
	private Instroctor instructor;
	private Batch batch;
	private Halls hall;
	private Modules module;
	private String tag;

	public TimeTable() {

	}

	public TimeTable(String startTime, String endTime, String day, Instroctor instructor, Batch batch, Halls hall,
			String tag, Modules module) {
		super();
		this.startTime = startTime;
		this.endTime = endTime;
		this.day = day;
		this.instructor = instructor;
		this.batch = batch;
		this.hall = hall;
		this.tag = tag;
		this.module = module;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public Instroctor getInstructor() {
		return instructor;
	}

	public void setInstructor(Instroctor instructor) {
		this.instructor = instructor;
	}

	public Batch getBatch() {
		return batch;
	}

	public void setBatch(Batch batch) {
		this.batch = batch;
	}

	public Halls getHall() {
		return hall;
	}

	public void setHall(Halls hall) {
		this.hall = hall;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Modules getModule() {
		return module;
	}

	public void setModule(Modules module) {
		this.module = module;
	}

	@Override
	public String toString() {
		return "TimeTable [id=" + id + ", startTime=" + startTime + ", endTime=" + endTime + ", day=" + day + ", tag="
				+ tag + "]";
	}

}
