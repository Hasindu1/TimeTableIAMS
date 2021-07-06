package iams.modal;

public class Halls {
	
	private String hallId, hallName, building,floor,maxCapacity,type;
	
	public Halls(){
		
	}
	public Halls(String hallName, String building, String floor, String maxCapacity, String type) {
		super();
	
		this.hallName = hallName;
		this.building = building;
		this.floor = floor;
		this.maxCapacity = maxCapacity;
		this.type = type;
	}
	
	
	
	
	
	public Halls(String hallId, String hallName, String building, String floor, String maxCapacity, String type) {
		super();
		this.hallId = hallId;
		this.hallName = hallName;
		this.building = building;
		this.floor = floor;
		this.maxCapacity = maxCapacity;
		this.type = type;
	}


	public String getHallId() {
		return hallId;
	}

	public void setHallId(String hallId) {
		this.hallId = hallId;
	}

	public String getHallName() {
		return hallName;
	}

	public void setHallName(String hallName) {
		this.hallName = hallName;
	}

	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getMaxCapacity() {
		return maxCapacity;
	}

	public void setMaxCapacity(String maxCapacity) {
		this.maxCapacity = maxCapacity;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	

}
