package agents;

import java.util.Collections;

import jade.content.lang.Codec;
import jade.content.lang.sl.SLCodec;
import jade.content.onto.Ontology;

import jade.core.Agent;
import Ontology.MCPOntology;
import Ontology.Movie;
import java.util.ArrayList;
import java.util.List;

public class Agent_negotiator extends Agent {
	
	private List<Rating> ratings; 
	private int currentProposal = 0; // el indice
	private String name = "";
	protected Codec codec = new SLCodec();
	protected Ontology ontology = MCPOntology.getInstance();

	protected void setup()
	{
		cutName();
		getContentManager().registerLanguage(codec);
		getContentManager().registerOntology(ontology);
		
		jade.util.leap.List actors = new jade.util.leap.ArrayList();
		actors.add("Sam Worthington");
		actors.add("Zoe Salda�a");
		actors.add("Sigourney Weaver");
		
		Movie movie1 = new Movie("Avatar        ",actors); 	
		Movie movie2 = new Movie("Titanic       ");
		Movie movie3 = new Movie("The Avengers  ");
		Movie movie4 = new Movie("Jurassic World");
		Movie movie5 = new Movie("The Godfather ");
		Movie movie6 = new Movie("Shrek         ");
		Movie movie7 = new Movie("Harry potter  ");
		
		this.ratings = new ArrayList<>();
		ratings.add(new Rating(movie1,Math.random()));
		ratings.add(new Rating(movie2,Math.random()));
		ratings.add(new Rating(movie3,Math.random()));
		ratings.add(new Rating(movie4,Math.random()));
		ratings.add(new Rating(movie5,Math.random()));
		ratings.add(new Rating(movie6,Math.random()));
		ratings.add(new Rating(movie7,Math.random()));

		Collections.sort(ratings); 	  //I order the movies by utility from least to greatest
		Collections.reverse(ratings); // I reverse the order, so that the movies that have more utility go first
		
		System.out.println("----------   " + getAgentName() + " movies   -------------------");
		printMovies();
		
		
	}
	
	public String getAgentName(){
		return this.name;
	}
	
	public void nextProposal(){
		this.currentProposal++;
	}
	
	public String getActualMovie(){
		return ratings.get(currentProposal).getMovie().getName();
	}
	
	public double getRating(String proposed_movie)
	{		
		for(Rating rating: ratings) {
			if(rating.getMovie().getName().equals(proposed_movie)) {
				return rating.getRating();
			}
		}
		return 0;
	}
	
	public Movie getCurrentProposal(){
		return ratings.get(currentProposal).getMovie();
	}
	
	public double getRatingCurrentProposal(){
		return ratings.get(currentProposal).getRating();
	}
	
	
	
	//--------------------------- 	Private 	--------------------------- //
	private void printMovies()
	{
		for(Rating rating: ratings) {
			System.out.println(rating.getMovie().getName() + " = " + rating.getRating());
		}
		System.out.println();
	}
	
	private void cutName(){
		String filename = this.getAID().getName();    
		int iend = filename.indexOf("@"); 
		if (iend != -1) 
		{
			name= filename.substring(0 , iend); 
		    
		}
	}
}