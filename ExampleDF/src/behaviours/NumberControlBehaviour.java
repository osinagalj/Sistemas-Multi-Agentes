package behaviours;

import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

public class NumberControlBehaviour extends Behaviour {
	private ACLMessage msgIni;
	private int number, count;
	private int step;
	private MessageTemplate mt;
	private int attempts;
	
	public NumberControlBehaviour(ACLMessage msgIni) {
		this.msgIni = msgIni;
		if (Math.random() > 0.5)
			count = 1;
		else
			count = 1;
		
		number = (int)((Math.random() * 10000) % Math.pow(10, count));
		
		step = 0;
		attempts = 0;
				
	}
	
	public void action() {
		switch (step) {
		case 0:
			ACLMessage reply = msgIni.createReply();
			reply.setPerformative(ACLMessage.ACCEPT_PROPOSAL);
			reply.setContent(String.valueOf(count));
			
			mt = MessageTemplate.and(MessageTemplate.MatchConversationId(reply.getConversationId()), 
									MessageTemplate.MatchInReplyTo(reply.getReplyWith()));
			step = 1;
			myAgent.send(reply);
			break;
		case 1:
			attempts++;
			ACLMessage msg = myAgent.receive(mt);
			if (msg != null) {
				int n = Integer.parseInt(msg.getContent());
				ACLMessage reply2 = msg.createReply();
				if (number == n) {
					reply2.setPerformative(ACLMessage.CONFIRM);
					step = 2;
					System.out.println("El agente " + msg.getSender().getLocalName() + " adivinó el número en " + attempts + " intentos.");
				}
				else {
					reply2.setPerformative(ACLMessage.DISCONFIRM);
					mt = MessageTemplate.and(MessageTemplate.MatchConversationId(reply2.getConversationId()), 
							MessageTemplate.MatchInReplyTo(reply2.getReplyWith()));
				}
				myAgent.send(reply2);
			}
			else
				block();
		default:
			break;
		}
	}

	public boolean done() {
		return step == 2;
	}


}
