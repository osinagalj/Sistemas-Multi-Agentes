package fsm;

import Ontology.IsMyZeuthen;
import agents.AgentNegotiator;
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

public class RecibirZeuthenBehaviour extends Behaviour {

	private boolean flag;
	private int aux = -1;
	
	public RecibirZeuthenBehaviour() {
		this.flag = false;
	}

	@Override
	public void action() {

		MessageTemplate template = (MessageTemplate)getDataStore().get(MCPBehaviour.MESSAGE_TEMPLATE);
		ACLMessage respuesta = myAgent.receive(template);
		
		try {
			if (respuesta == null){
				block();
			}
			else{
				System.out.println(((AgentNegotiator)myAgent).getNombre() + " has received the opponent's zeuthen");
				flag = true;
				double ultimo_zeuthen = (Double)getDataStore().get(MCPBehaviour.ULTIMO_ZEUTHEN); 
				double zeuthenRecibido = 0;
				
				
				ContentElement ce = null;
				ce = myAgent.getContentManager().extractContent(respuesta);
				IsMyZeuthen isMyZeuthen = (IsMyZeuthen)ce;
				zeuthenRecibido = isMyZeuthen.getValue();
				System.out.println("Zeuthen of  "+ ((AgentNegotiator)myAgent).getNombre() + " = "+zeuthenRecibido);
					
				
				//Si mi zeuthen es menor tengo que enviar una prop, osea retornar 0
				//Si mi zeuthen es mayor tengo que esperar una propuesta y retornar 1 para la maquina de estados
				if(ultimo_zeuthen < zeuthenRecibido){ // MiZeuthen < ZeuthenRecibido
					aux = 0;
					System.out.println(((AgentNegotiator)myAgent).getNombre() + " has to propose");
				}else {
					aux = 1;
					System.out.println(((AgentNegotiator)myAgent).getNombre() + " has to wait");
				}
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
