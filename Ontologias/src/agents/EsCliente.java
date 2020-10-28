package agents;

import jade.content.Predicate;

public class EsCliente implements Predicate {
	
	private Cliente cliente;
	
	public EsCliente() {}
	
	public EsCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

}
