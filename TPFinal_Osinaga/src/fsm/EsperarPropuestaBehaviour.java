package fsm;

import agents.AgentNegotiator;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

/*
 * Espera un mensaje y responde si acepta o rechaza
 * Tendria que recibir un mensaje(propuesta)
 * El comportamiento anterior prepara el template del mensae que va a recibir este
 * 
 * */
public class EsperarPropuestaBehaviour extends Behaviour {
	
	private boolean flag;
	
	public EsperarPropuestaBehaviour(){
		this.flag = false;
	}

	@Override
	public void action()
	{
		MessageTemplate template = (MessageTemplate)getDataStore().get(MCPBehaviour.MESSAGE_TEMPLATE);
		ACLMessage prop = myAgent.receive(template);
		
		if (prop != null)
		{
			System.out.println(((AgentNegotiator)myAgent).getNombre() + " has received a proposal ");
			getDataStore().put(MCPBehaviour.ULTIMO_MSG, prop);
			getDataStore().put(MCPBehaviour.PROPUESTA, prop);
			this.flag = true;
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

}
