package boots.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="actor")
public class Actor implements Serializable{

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=45)
	private String name;
	@Column(length=45)
	private String last_name;
	@Temporal(TemporalType.DATE)
	@Column(name="date_start")
	private Date date_start;
	private boolean state;
	public Actor(String name, String last_name, Date date_start, boolean state) {
		super();
		this.name = name;
		this.last_name = last_name;
		this.date_start = date_start;
		this.state = state;
	}
	
	public Actor() {
		this("","",new Date(),false);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public Date getDate_start() {
		return date_start;
	}

	public void setDate_start(Date date_start) {
		this.date_start = date_start;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Actors [id=" + id + ", name=" + name + ", last_name=" + last_name + ", date_start=" + date_start
				+ ", state=" + state + "]";
	}
	
	
	
}
