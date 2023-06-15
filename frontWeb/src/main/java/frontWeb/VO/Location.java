package frontWeb.VO;

public class Location {
	private int location_id;
	private String street_adress;
	private String postal_code;
	private String city;
	private String state_Province;
	private String country_id;
	public Location() {
		// TODO Auto-generated constructor stub
	}
	
	public Location(String stAdd, String city) {
		this.street_adress = stAdd;
		this.city = city;
	}

	public Location(int location_id, String street_adress, String postal_code, String city, String state_Province,
			String country_id) {
		this.location_id = location_id;
		this.street_adress = street_adress;
		this.postal_code = postal_code;
		this.city = city;
		this.state_Province = state_Province;
		this.country_id = country_id;
	}

	public int getLocation_id() {
		return location_id;
	}

	public void setLocation_id(int location_id) {
		this.location_id = location_id;
	}

	public String getStreet_adress() {
		return street_adress;
	}

	public void setStreet_adress(String street_adress) {
		this.street_adress = street_adress;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState_Province() {
		return state_Province;
	}

	public void setState_Province(String state_Province) {
		this.state_Province = state_Province;
	}

	public String getCountry_id() {
		return country_id;
	}

	public void setCountry_id(String country_id) {
		this.country_id = country_id;
	}


}
