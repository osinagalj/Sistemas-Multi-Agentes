package behaviours;

import fsm.MCPBehaviour;
import jade.core.behaviours.Behaviour;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.lang.acl.ACLMessage;

public class SubscriptionI extends Behaviour {

	DFAgentDescription template;
	
	public SubscriptionI(DFAgentDescription template){
		this.template = template;
	}
	
	@Override
	public void action() {
		// TODO Auto-generated method stub
		//new SubscriptionInitiator( myAgent,
		// DFService.createSubscriptionMessage( this, myAgent.getDefaultDF(), template, null);
			
	}
	protected void handleInform(ACLMessage inform) {
		try {
			DFAgentDescription[] result = DFService.decodeNotification(inform.getContent());
			if (result[0].getAllServices().hasNext())
				myAgent.addBehaviour(new MCPBehaviour(true,null,result[0].getName()));
			}
		catch (FIPAException fe) {fe.printStackTrace(); }
	}

	@Override
	public boolean done() {
		// TODO Auto-generated method stub
		return true;
	}

}
