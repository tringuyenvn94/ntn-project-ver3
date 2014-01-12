package entity;

public class RoleEntity {
	private UserEntity user;
	private PowerEntity power;

	public RoleEntity(UserEntity user, PowerEntity power) {
		this.user = user;
		this.power = power;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public PowerEntity getPower() {
		return power;
	}

	public void setPower(PowerEntity power) {
		this.power = power;
	}

}
