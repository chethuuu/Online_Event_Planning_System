package CustomerP;

public class Payment {
	private int PID;
	private String CName;
	private String event;
	private String price;
	private String bank;
	private String username;
	private String password;

	
	
	public Payment (int PID, String CName, String event, String price, String bank, String username, String password) {
			this.PID = PID;
			this.CName = CName;
			this.event = event;
			this.price = price;
			this.bank = bank;
			this.username = username;
			this.password = password;
	
	}

	public int getPID() {
		return PID;
	}


	public String getCName() {
		return CName;
	}


	public String getEvent() {
		return event;
	}


	public String getPrice() {
		return price;
	}


	public String getBank() {
		return bank;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	
}
