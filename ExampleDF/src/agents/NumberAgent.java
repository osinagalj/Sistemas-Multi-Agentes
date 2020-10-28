package agents;

import behaviours.NumberResponderBehaviour;
import jade.core.Agent;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.ServiceDescription;

public class NumberAgent extends Agent {
	
	protected void setup() {
		// Crea una descripción del agente para el DF
		DFAgentDescription dfd = new DFAgentDescription();
		dfd.setName(getAID());
		
		// Crea una descripción del servicio
		ServiceDescription sd = new ServiceDescription();
		sd.setType("game");
		sd.setName("adivinador-numeros");
		dfd.addServices(sd);
		try {
			DFService.register(this, dfd);
		}
		catch (FIPAException fe) {
			fe.printStackTrace();
		}
		
		addBehaviour(new NumberResponderBehaviour());
	}
	
	protected void takeDown() {
		try {
			DFService.deregister(this);
		}
		catch (FIPAException fe) {
			fe.printStackTrace();
		}

	}

}
