package model;

public class Expenditure {

	/**
	 * implements java.io.Serializable {
	 * 	private static final long serialVersionUID = 1L;
	 */

	private String date; 
	
		public String getDate() {
	        return date;
	    }
	    public void setDate(String date) {
	        this.date = date;
	    }
	    
	private String day;  
	
		public String getDay() {
	        return day;
	    }
	    public void setDay(String day) {
	        this.day = day;
	    }
	    
	public String item; 
	
		public String getItem() {
	        return item;
	    }
	    public void setItem(String item) {
	        this.item = item;
	    }
    
	public String cost;
	
		public String getCost() {
	        return cost;
	    }
	    public void setCost(String cost) {
	        this.cost = cost;
	    }	
}
