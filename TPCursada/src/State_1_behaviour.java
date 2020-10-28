import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

public class State_1_behaviour extends Behaviour {
	
	private int event;
	private boolean flag = false;
	
	@Override
	public void action() {
		System.out.println("Entro 1");
		ACLMessage msg = myAgent.receive(MessageTemplate.or(MessageTemplate.MatchPerformative(ACLMessage.ACCEPT_PROPOSAL),MessageTemplate.MatchPerformative(ACLMessage.REJECT_PROPOSAL)));
		
		if(msg!= null) {
			flag = true;
			if(msg.getPerformative() == ACLMessage.REJECT_PROPOSAL ) { //no acepta la peli
				event = 1;
			}else {
				event = 0;
			}
			
		}else {
			block();
		}	
	}

	@Override
	public boolean done() {
		return flag;
	}
	
	@Override
	public int onEnd() {
		return this.event;
	}
	
	@Override
	public void reset() {
		super.reset();
		this.flag = false;
	}

}
