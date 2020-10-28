import java.util.ArrayList;

import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

public class Agent_respond_behaviour extends Behaviour {

	
	
	boolean flag = false;
	
	@Override
	public void action() {
		// TODO Auto-generated method stub
		ACLMessage msg = myAgent.receive(MessageTemplate.MatchPerformative(ACLMessage.PROPOSE));
		
		if(msg != null) {
			ACLMessage reply = msg.createReply();
			if(Math.random() < 0.7)
				reply.setPerformative(ACLMessage.REJECT_PROPOSAL);
			else 
				reply.setPerformative(ACLMessage.ACCEPT_PROPOSAL);
			
			reply.setContent("Pelicula recibido = " + msg.getContent());
			myAgent.send(reply);
			flag = true;
			
		}else {
			block();
		}
	}

	@Override
	public boolean done() {
		/*
		if(flag == true) {
			flag = false;
			return true;
		}
		return flag;
		*/
		return false;
	}

}
