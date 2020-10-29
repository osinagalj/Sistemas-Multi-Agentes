package fsm;

import agents.Agent_negotiator;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;


//
// Wait for a non-initial proposal, and when it gets it, it stores it in the Data Store variables and
// ends, giving way to the next state in the MCPBehaviour state machine
//
public class Wait_proposal_behaviour extends Behaviour {
	
	private boolean flag;
	
	public Wait_proposal_behaviour(){
		this.flag = false;
	}

	@Override
	public void action()
	{
		MessageTemplate template = (MessageTemplate)getDataStore().get(MCPBehaviour.MESSAGE_TEMPLATE);
		ACLMessage prop = myAgent.receive(template);
		
		if (prop != null)
		{
			System.out.println(((Agent_negotiator)myAgent).getAgentName() + " has received a proposal ");
			getDataStore().put(MCPBehaviour.LAST_MSG, prop);
			getDataStore().put(MCPBehaviour.PROPOSAL, prop);
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
