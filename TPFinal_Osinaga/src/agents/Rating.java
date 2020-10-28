package agents;

import Ontology.Movie;

public class Rating implements Comparable<Rating> {
	
	private Movie pelicula; //Tiene que ser el concepto Movie de la ontologia
	private double rating;
	
	public Rating(Movie pelicula,double rating) {
			super();
			this.pelicula = pelicula;
			this.rating = rating;
	}
	
	@Override
	public int compareTo(Rating r){
		return Double.compare(this.rating, r.getRating());
	}

	public double getRating(){
		return rating;
	}

	public Movie getPelicula(){
		return this.pelicula;
		
	}

}
