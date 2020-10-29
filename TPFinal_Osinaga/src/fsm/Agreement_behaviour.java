package fsm;

import agents.Agent_negotiator;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;

//
// Possible final state, where the film agreed by both agents is shown.
//

public class Agreement_behaviour extends Behaviour {

	@Override
	public void action() {
		System.out.println("------------------------   " + ((Agent_negotiator)myAgent).getAgentName() + " agreed to see the movie >>>   " + Evaluate_proposal_behaviour.FINAL_MOVIE );
	}

	@Override
	public boolean done() {
		return true;
	}

}


 