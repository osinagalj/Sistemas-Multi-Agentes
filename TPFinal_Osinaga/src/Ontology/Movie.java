package Ontology;
import java.util.Date;  

import jade.content.Concept;
import jade.util.leap.List;

public class Movie implements Concept{
	private String name;
	private Date year ;
	private String director ;
	private List actors ;
	
	public Movie() {}
	
	public Movie(String name){
		this.name = name;
	}
	
	public Movie(String name, List actors) {
		this.name = name;
		this.actors = actors;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setYear(Date year) {
		this.year = year;
	}
	
	public Date getYear() {
		return this.year;
	}
	
	public void setDirector(String director) {
		this.director = director;
	}
	
	public String getDirector() {
		return this.director;
	}
	
	public void setActors(List l) { 
		this.actors = l;
	}
	
	public List getActors() {
		return actors;
	}
	
}
