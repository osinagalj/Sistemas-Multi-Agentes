package fsm;

import Ontology.IsMyZeuthen;
import Ontology.Movie;
import Ontology.SeeMovie;
import agents.Agent_negotiator;
import jade.content.ContentElement;
import jade.content.lang.Codec.CodecException;
import jade.content.onto.OntologyException;
import jade.content.onto.basic.Action;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;


//
//Calculate the zeuthen and send it. The zeuthen is calculated as:
//CALCULATE ZEUTHEN Z = (U (current_prop) - U (received_prop)) / U (current_prop)
//

public class Calculate_zeuthen_behaviour extends Behaviour {

	@Override
	public void action() {
		
		System.out.println(((Agent_negotiator)myAgent).getAgentName() + " is calculating the Zeuthen");
		ACLMessage pelicula_propuesta = (ACLMessage)getDataStore().get(MCPBehaviour.PROPOSAL);
		double zeuthen = -1.0;
		
		if(pelicula_propuesta == null){
			zeuthen = 1;
		}
		else{
			double uPropActual = ((Agent_negotiator)myAgent).getRatingCurrentProposal();
			String pelicula_propuest = "";
			try {
				ContentElement ce = null;
					ce = myAgent.getContentManager().extractContent(pelicula_propuesta);
					Action p = (Action)ce;
					SeeMovie seemovie = (SeeMovie)p.getAction();
					Movie mov = seemovie.getMovie();
					pelicula_propuest =  mov.getName();	
			}
			catch (CodecException ce) {
				ce.printStackTrace();
			}
			catch (OntologyException oe) {
				oe.printStackTrace();
			}
			
			double uPropRecibida = ((Agent_negotiator)myAgent).getRating(pelicula_propuest);
			zeuthen = (uPropActual - uPropRecibida) / uPropActual; 
				
		}

		getDataStore().put(MCPBehaviour.LAST_ZEUTHEN, zeuthen);
		ACLMessage ult_msg = (ACLMessage)getDataStore().get(MCPBehaviour.LAST_MSG);
		
		ACLMessage informZ = ult_msg.createReply();
		informZ.setPerformative(ACLMessage.INFORM);
		
		System.out.println("Zeuthen of " + ((Agent_negotiator)myAgent).getAgentName() +" = " + zeuthen );
		try {
			myAgent.getContentManager().fillContent(informZ, new IsMyZeuthen(zeuthen));
		} catch (CodecException | OntologyException e) {
			e.printStackTrace();
		}
		
		myAgent.send(informZ);
				
	}

	@Override
	public boolean done() {
		return true;
	}

}
