package agents;


public class Cliente extends Persona {
	private int numCliente;

	public int getNumCliente() {
		return numCliente;
	}

	public void setNumCliente(int numCliente) {
		this.numCliente = numCliente;
	}
	
	public String toString() {
		return "Cliente: " + getNombre() + ", " + getEdad() + ", " 
			+ getCiudad().getNombre() + ", " + numCliente;
	}
	
	
}
