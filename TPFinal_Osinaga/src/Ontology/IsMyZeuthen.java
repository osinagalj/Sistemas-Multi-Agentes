package Ontology;
import jade.content.Predicate;

public class IsMyZeuthen implements Predicate{
	
	private double value;
	
	public IsMyZeuthen() {}
	
	public IsMyZeuthen(double valor) {
		this.value = valor;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value){
		this.value = value;
	}

}




