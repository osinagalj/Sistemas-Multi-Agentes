package fsm;

import agents.Agent_negotiator;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

//
//It is a cyclical behavior that what you are going to be doing is waiting for an initial proposal
//
public class Wait_initial_proposal_Behaviour extends Behaviour {
   
	@Override
	public void action() {
		
		ACLMessage prop_ini = myAgent.receive(
						MessageTemplate.and(
						MessageTemplate.MatchPerformative(ACLMessage.PROPOSE), 
						MessageTemplate.MatchInReplyTo(""))); //If the replyTo is empty it means that it is an initial proposal, so it is the first message of the conversation
		
		if (prop_ini != null) {
			myAgent.addBehaviour(new MCPBehaviour(false, prop_ini,null)); 										/* Print */ 	System.out.println(((Agent_negotiator)myAgent).getAgentName() + " has received the initial proposal ");
			// The first parameter is false because it is not an initial proposal
		}
		else
			block();
	}

	
	@Override
	public boolean done() {
		return false;
	}

}
