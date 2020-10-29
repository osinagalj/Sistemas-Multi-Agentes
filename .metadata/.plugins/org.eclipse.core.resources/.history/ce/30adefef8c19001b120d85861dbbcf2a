package fsm;

import Ontology.IsMyZeuthen;
import agents.Agent_negotiator;
import jade.content.ContentElement;
import jade.content.lang.Codec.CodecException;
import jade.content.onto.OntologyException;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;
/*
Recibo el zeuthen del oponente 
Comparo y decido quien es el que tiene que conceder
Si mi zeuthen es el menor, tengo que proponer una propuesta
Si mi zeuthen es mayor, tengo que esperar una propuesta porque al que le toca proponer es al otro.

	Va a preparar el template para esperar respuesta
	
	//El que tiene menor valor de zheuten tiene que conceder 
	 * 
*/

public class Receive_zeuthen_behaviour extends Behaviour {

	private boolean flag;
	private int aux = -1;
	
	public Receive_zeuthen_behaviour() {
		this.flag = false;
	}

	@Override
	public void action() {

		MessageTemplate template = (MessageTemplate)getDataStore().get(MCPBehaviour.MESSAGE_TEMPLATE);
		ACLMessage answer = myAgent.receive(template);
		
		try {
			if (answer != null){
				flag = true;
				System.out.println(((Agent_negotiator)myAgent).getAgentName() + " has received the opponent's zeuthen");
				
				double last_zeuthen = (Double)getDataStore().get(MCPBehaviour.LAST_ZEUTHEN); 
			
				ContentElement ce = null;
				ce = myAgent.getContentManager().extractContent(answer);
				IsMyZeuthen isMyZeuthen = (IsMyZeuthen)ce;
				double zeuthenReceived = isMyZeuthen.getValue();												/* Print */ System.out.println("Zeuthen of  "+ ((Agent_negotiator)myAgent).getAgentName() + " = "+zeuthenReceived);				
					
				if(last_zeuthen < zeuthenReceived){ 
					//Has to propose a movie	
					aux = 0; 																			/* Print */ System.out.println(((Agent_negotiator)myAgent).getAgentName() + " has to propose");
				}else {
					//Has to wait for the other agent to send a proposal
					aux = 1;																			/* Print */ System.out.println(((Agent_negotiator)myAgent).getAgentName() + " has to wait");
					
				}
			}
			else{
				block();
			}
		
		}
		catch (CodecException ce) {
			ce.printStackTrace();
		}
		catch (OntologyException oe) {
			oe.printStackTrace();
		}
		

	}

	@Override
	public boolean done() {

		return flag;
	}
	
	@Override
	public void reset() {
		super.reset();
		this.flag = false;
	}
	
	@Override
	public int onEnd(){
		return aux; 
	}
}
