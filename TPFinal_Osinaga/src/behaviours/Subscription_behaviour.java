package behaviours;

import fsm.MCPBehaviour;
import jade.core.behaviours.Behaviour;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.lang.acl.ACLMessage;

public class Subscription_behaviour extends Behaviour {

	DFAgentDescription template;
	
	public Subscription_behaviour(DFAgentDescription template){
		this.template = template;
	}
	
	@Override
	public void action() {}
	
	protected void handleInform(ACLMessage inform) {
		try 
		{
			DFAgentDescription[] result = DFService.decodeNotification(inform.getContent());
			if (result[0].getAllServices().hasNext())
				myAgent.addBehaviour(new MCPBehaviour(true,null,result[0].getName()));
		}
		catch (FIPAException fe) {fe.printStackTrace(); }
	}

	@Override
	public boolean done() {
		return true;
	}

}
