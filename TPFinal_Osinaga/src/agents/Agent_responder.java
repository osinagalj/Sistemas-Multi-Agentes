package agents;

import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.ServiceDescription;
import jade.wrapper.AgentContainer;
import jade.wrapper.AgentController;
import jade.wrapper.StaleProxyException;
import fsm.Wait_initial_proposal_Behaviour;
import java.util.Scanner; 


public class Agent_responder extends Agent_negotiator {
		

	protected void setup() {
		
		super.setup();
		// Crea una descripción del agente para el DF
		DFAgentDescription dfd = new DFAgentDescription();
		dfd.setName(getAID());
		
		// Crea una descripción del servicio
		ServiceDescription sd = new ServiceDescription();
		sd.setType("Movie");
		sd.setName("Negotiation-movie");
		dfd.addServices(sd);
		try {
			DFService.register(this, dfd);
			
		}
		catch (FIPAException fe) {
			fe.printStackTrace();
		}
				
		this.addBehaviour(new Wait_initial_proposal_Behaviour());
		
		//Create Agent initiator
		createOtherAgent(); 
			
	}

	
	

private void createOtherAgent()
{
/*
		System.out.println ("Do you want to generate an agent initiator automatically? yes/no");

		String entradaTeclado = "";
		Scanner entradaEscaner = new Scanner (System.in); //Creación de un objeto Scanner
		entradaTeclado = entradaEscaner.nextLine (); 
		entradaEscaner.close();
		if(entradaTeclado.equals("yes")) 
		{
*/
			AgentContainer c = getContainerController();
			try {
		       AgentController control = c.createNewAgent( "Agent_initiator", "agents.Agent_initiator",null); // Program arguments -gui Agent_responder:agents.Agent_responder
		       control.start();
			}
			catch (StaleProxyException e){}
		}

//}


protected void takeDown()
{
	try {
		DFService.deregister(this);
	}
	catch (FIPAException fe) {
		fe.printStackTrace();
	}

}
	
}
