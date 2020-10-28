package behaviours;

import jade.core.AID;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

public class NumberInitiatorBehaviour extends Behaviour {
	private AID otherAgent;
	private MessageTemplate mt;
	private int step, count;
	private ACLMessage reply;
	
	public NumberInitiatorBehaviour(AID aid) {
		otherAgent = aid;
		step = 0;
	}
	
	public void action() {
		switch (step) {
		case 0:
			ACLMessage req = new ACLMessage(ACLMessage.REQUEST);
			req.addReceiver(otherAgent);
			req.setConversationId("CONV-" + myAgent.getName());
			req.setReplyWith(myAgent.getName() + System.currentTimeMillis());
			
			mt = MessageTemplate.and(MessageTemplate.MatchConversationId(req.getConversationId()), 
					MessageTemplate.MatchInReplyTo(req.getReplyWith()));
			
			step = 1;
			
			myAgent.send(req);
			break;
			
		case 1:
			ACLMessage msg = myAgent.receive(mt);
			if (msg != null) {
				try {
					count = Integer.parseInt(msg.getContent());
				} 
				catch (Exception e) {count = 1;}
				reply = msg.createReply();
				
				step = 2;
			}
			else {
				block();
				break;
			}
		case 2:
			reply.setPerformative(ACLMessage.PROPOSE);
			reply.setContent(String.valueOf((int)((Math.random() * 10000) % Math.pow(10, count))));
			
			mt = MessageTemplate.and(MessageTemplate.MatchConversationId(reply.getConversationId()), 
					MessageTemplate.MatchInReplyTo(reply.getReplyWith()));
			
			myAgent.send(reply);
			step = 3;
			break;
		case 3:
			ACLMessage conf = myAgent.receive(mt);
			if (conf != null) {
				if (conf.getPerformative() == ACLMessage.CONFIRM)
					step = 4;
				else {
					reply = conf.createReply();
					step = 2;
				}		
			}
			else
				block();
			break;
		
			
		default:
			break;
		}

	}

	public boolean done() {

		return step == 4;
	}

}
