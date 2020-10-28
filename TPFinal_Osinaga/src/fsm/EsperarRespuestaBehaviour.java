package fsm;

import jade.core.behaviours.Behaviour; 
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;
/*
 Espera la respuesta, si llega un acept, termina
 Si le llega un reject, lo que tiene que hacer calcualr mi zeuthen y enviarlo, y despues recibir el zeuthen del oponente
  
*/
public class EsperarRespuestaBehaviour extends Behaviour {
	
	private boolean flag;
	private int aux = -1;
	
	public EsperarRespuestaBehaviour() {
		this.flag = false;
	}
	@Override
	public void action()
	{
		MessageTemplate template = (MessageTemplate)getDataStore().get(MCPBehaviour.MESSAGE_TEMPLATE);	
		ACLMessage respuesta = myAgent.receive(template);
		
		if (respuesta != null)
		{
			getDataStore().put(MCPBehaviour.ULTIMO_MSG, respuesta);
			this.flag = true;	
			switch(respuesta.getPerformative())
			{
			   case ACLMessage.ACCEPT_PROPOSAL :
				   aux = 1;
			      break; 
			   case ACLMessage.REJECT_PROPOSAL :
				   aux = 0;
			      break;   
			}
		}
		else
			block();
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
	public int onEnd() {
		return aux;
	}

}
