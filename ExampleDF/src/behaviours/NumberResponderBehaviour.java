package behaviours;

import jade.core.AID;
import jade.core.behaviours.CyclicBehaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

public class NumberResponderBehaviour extends CyclicBehaviour {
	
	public void action() {
		ACLMessage msg = myAgent.receive(MessageTemplate.MatchPerformative(ACLMessage.REQUEST));
		if (msg != null) {
			myAgent.addBehaviour(new NumberControlBehaviour(msg));
		}
		else
			block();

	}

}
