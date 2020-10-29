package fsm;
  

import Ontology.MCPOntology;
import Ontology.Movie;
import Ontology.SeeMovie;
import agents.Agent_negotiator;
import jade.content.lang.Codec;
import jade.content.lang.Codec.CodecException;
import jade.content.lang.sl.SLCodec;
import jade.content.onto.Ontology;
import jade.content.onto.OntologyException;
import jade.content.onto.basic.Action;
import jade.core.AID;
import jade.core.behaviours.Behaviour;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.lang.acl.ACLMessage;

/*
 Prepara un mensaje y lo envia 
*/
public class SendProposalBehaviour extends Behaviour 
{
	private Codec codec = new SLCodec();
	private Ontology ontology = MCPOntology.getInstance();
	
	public SendProposalBehaviour() {}
	
	@Override
	public void action() {
		
			ACLMessage ultimoMsg = (ACLMessage) getDataStore().get(MCPBehaviour.LAST_MSG);	
			ACLMessage msg;
			
			if(ultimoMsg == null)
			{	
				System.out.println(" ------------------------------------   Start of the negotiation   ----------------------------------- ");
				msg = new ACLMessage(ACLMessage.PROPOSE);											/* Print */ System.out.println("\n    >>>>>>>>>>>>>> Propose of "+ ((Agent_negotiator)myAgent).getAgentName() + " = "+ ((Agent_negotiator)myAgent).getCurrentProposal().getName());
				msg.addReceiver((AID)getDataStore().get(MCPBehaviour.IDR));
				msg.setLanguage(codec.getName());
				msg.setOntology(ontology.getName());
				msg.setConversationId(String.valueOf(System.currentTimeMillis()));
				msg.setInReplyTo("");
			}else{					
				msg = ultimoMsg.createReply(); 													/* Print */ System.out.println("\n   >>>>>>>>>>>>>>  Propose of  "+ ((Agent_negotiator)myAgent).getAgentName() + " = "+ ((Agent_negotiator)myAgent).getCurrentProposal().getName());
				msg.setPerformative(ACLMessage.PROPOSE);	//When a response is created, the ontology and codec are automatically set
			}
			
			Action action = new Action((AID)msg.getAllReceiver().next(), new SeeMovie(((Agent_negotiator)myAgent).getCurrentProposal()));		
			try {
				myAgent.getContentManager().fillContent(msg,action);
			} catch (CodecException | OntologyException e) {
				e.printStackTrace();
			}
			
			((Agent_negotiator)myAgent).nextProposal(); // When I send a proposal, whether initial or not, I have to update the index.
			myAgent.send(msg);
		}


	@Override
	public boolean done() {
		return true;
	}

}
