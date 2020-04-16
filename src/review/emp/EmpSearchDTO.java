package review.emp;

public class EmpSearchDTO {

	private String department_id;
	private String first_name;
	private int first;
	private int end;
	private String DBList;
	
	public EmpSearchDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getDBList() {
		return DBList;
	}

	public void setDBList(String dBList) {
		DBList = dBList;
	}
	
}
