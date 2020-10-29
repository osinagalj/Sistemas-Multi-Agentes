package agents;
import fsm.MCPBehaviour;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.ServiceDescription;
import behaviours.Subscription_behaviour;

//
//Agent who starts the movie business. This is created by the responder or uploaded to manually. This agent extends from Agent_negotiator
//

public class Agent_initiator extends Agent_negotiator {
			
	protected void setup() {

		super.setup();
			
		DFAgentDescription template = new DFAgentDescription();
		ServiceDescription sd = new ServiceDescription();
		sd.setType("Movie");
		sd.setName("Negotiation-movie");
		template.addServices(sd);
		try {
			DFAgentDescription[] result = DFService.search(this, template);
			if (result.length > 0)
				this.addBehaviour(new MCPBehaviour(true,null,result[0].getName()));
			else{
				addBehaviour( new Subscription_behaviour(template));
			}
		}catch (FIPAException fe) { 
			fe.printStackTrace(); 
			}
		}
}
	

