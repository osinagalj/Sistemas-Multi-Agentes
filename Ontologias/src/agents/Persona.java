package agents;

import jade.content.Concept;
import jade.content.ContentElement;
import jade.content.abs.AbsContentElement;

public class Persona implements Concept{
	private String nombre;
	private City ciudad;
	private int edad;
	
	public City getCiudad() {
		return ciudad;
	}
	public void setCiudad(City ciudad) {
		this.ciudad = ciudad;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public String getNombre() { 
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
}
