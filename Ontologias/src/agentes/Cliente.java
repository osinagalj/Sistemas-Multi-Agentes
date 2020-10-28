package agentes;


public class Cliente extends Persona {
	private int numCliente;

	public int getNumCliente() {
		return numCliente;
	}

	public void setNumCliente(int numCliente) {
		this.numCliente = numCliente;
	}
	
	public String toString() {
		return "Cliente: " + getNombre() + ",\n Edad: " + getEdad() + ",\n Ciudad: " 
			+ getCiudad().getNombre() + ",\n N.Cliente: " + numCliente;
	}
	
	
}
