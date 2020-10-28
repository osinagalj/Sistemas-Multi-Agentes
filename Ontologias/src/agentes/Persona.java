package agentes;

import jade.content.Concept;
import jade.content.ContentElement;
import jade.content.abs.AbsContentElement;

public class Persona implements Concept {
	private String nombre;
	private Ciudad ciudad;
	private int edad;
	
	public Ciudad getCiudad() {
		return ciudad;
	}
	public void setCiudad(Ciudad ciudad) {
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
