package agents;

import Ontology.Movie;

public class Rating implements Comparable<Rating> {
	
	private Movie movie; 
	private double rating;
	
	public Rating(Movie movie,double rating) {
			this.movie = movie;
			this.rating = rating;
	}
	
	@Override
	public int compareTo(Rating r){
		return Double.compare(this.rating, r.getRating());
	}

	
	public void setMovie(Movie movie){
		this.movie = movie;
	}

	public Movie getMovie(){
		return this.movie;
	}

	
	
	public double getRating(){
		return rating;
	}

	public void setRating(double rating){
		 this.rating = rating;
	}
}
