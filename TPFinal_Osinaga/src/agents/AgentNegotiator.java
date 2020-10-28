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

public class AgentNegotiator extends Agent {
	
	private List<Rating> ratings; 
	private int propuestaActual = 0; // el indice
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

		Collections.sort(ratings); 
		Collections.reverse(ratings); //ordeno de mayor a menor utilidad, el sort ordena de menor a mayor
		System.out.println("----------   " + getNombre() + " movies   -------------------");
		
		imprimitPeliculas();
		
		
	}
	
	public String getNombre(){
		return this.name;
	}
	
	public void nextProposal(){
		this.propuestaActual++;
	}
	
	public String getActualMovie(){
		return ratings.get(propuestaActual).getPelicula().getName();
	}
	
	public List<Rating> getRatings(String pelicula_propuesta)
	{		
		List<Rating> retorno = new ArrayList<Rating>();
		retorno.addAll(ratings); 
		return retorno;
	}
	
	public double getRating(String pelicula_propuesta)
	{		
		for(Rating rating: ratings) {
			if(rating.getPelicula().getName().equals(pelicula_propuesta)) {
				return rating.getRating();
			}
		}
		return 0;
	}
	
	public Movie getPropuestaActual(){
		return ratings.get(propuestaActual).getPelicula();
	}
	
	public double getRatingPropuestaActual(){
		return ratings.get(propuestaActual).getRating();
	}
	
	
	private void imprimitPeliculas(){
		for(Rating rating: ratings) {
			System.out.println(rating.getPelicula().getName() + " = " + rating.getRating());
		}
		System.out.println();
	}
	private void cutName(){
		String filename = this.getAID().getName();     // full file name
		int iend = filename.indexOf("@"); 
		if (iend != -1) 
		{
			name= filename.substring(0 , iend); //this will give abc
		    
		}
	}
}