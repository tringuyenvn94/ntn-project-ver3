package entity;

public class StatusEntity {
	private String statusId;
	private String statusName;

	public StatusEntity(String statusId, String statusName) {
		this.statusId = statusId;
		this.statusName = statusName;
	}

	public String getStatusId() {
		return statusId;
	}

	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

}
