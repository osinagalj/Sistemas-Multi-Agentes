package Ontology;
import java.util.Date;
import jade.content.AgentAction;
import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;    
   
public class SeeMovie implements AgentAction { 
	private Movie movie;
	private Date date;
	
	public SeeMovie() {}
	
	public SeeMovie(Movie movie)
	{
		this.movie = movie;
		this.date = new Date();

	}
	
	public Movie getMovie()
	{
		return this.movie;
	}
	
	public void setMovie(Movie movie)
	{
		this.movie = movie;
	}
	
	public Date getDate()
	{
		return this.date;
	}
	
	public void setDate(Date date)
	{
		this.date = date;
	}
	
}
