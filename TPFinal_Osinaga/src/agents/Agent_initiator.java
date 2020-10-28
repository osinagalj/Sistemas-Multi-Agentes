package agents;

import fsm.MCPBehaviour;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.ServiceDescription;
import behaviours.SubscriptionI;


public class Agent_initiator extends AgentNegotiator {
			
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
				addBehaviour( new SubscriptionI(template));
			}

		}catch (FIPAException fe) { 
			fe.printStackTrace(); 
			}
		}
		
}
	

