package fsm;

import Ontology.Movie;
import Ontology.SeeMovie;
import agents.Agent_negotiator;

import jade.content.ContentElement;
import jade.content.lang.Codec.CodecException;
import jade.content.onto.OntologyException;
import jade.content.onto.basic.Action;

import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;

public class Evaluate_proposal_behaviour extends Behaviour {
	
	private int event;
	public static String FINAL_MOVIE = "";
	@Override
	public void action()
	{
		ACLMessage proposal = (ACLMessage)this.getDataStore().get(MCPBehaviour.PROPOSAL);	
		try
		{
			//Getting the movie from the proposal
			ContentElement ce = null;
			ce = myAgent.getContentManager().extractContent(proposal);
			Action action = (Action)ce;
			SeeMovie seemovie = (SeeMovie)action.getAction();
			Movie movie = seemovie.getMovie();
			String proposedMovie =  movie.getName(); //Name of the proposed movie
	
			//Conflict situation
			if (proposal.getPerformative() == ACLMessage.CANCEL) {
				event = 2;
				return;
			}
		
			//Utilities calculation 			
			double uCurrentMovie = ((Agent_negotiator)myAgent).getRatingCurrentProposal();    				/* Print */ System.out.println("  Utility of the current proposal   =  " + uCurrentMovie + " , movie = " +((Agent_negotiator)myAgent).getActualMovie());
			double uProposedMovie= ((Agent_negotiator)myAgent).getRating(proposedMovie);  					/* Print */	System.out.println("  Utility of the proposal received =  " + uProposedMovie+ " , movie = " + proposedMovie);
					
			// Evaluation of the proposal
			System.out.println(((Agent_negotiator)myAgent).getAgentName() + " is evaluating the proposal");
			if (uCurrentMovie <= uProposedMovie) 
			{ 	
				event = 1;
				ACLMessage accept = proposal.createReply();
				accept.setPerformative(ACLMessage.ACCEPT_PROPOSAL);
				myAgent.send(accept);
				System.out.println("The proposal has been accepted by "+ ((Agent_negotiator)myAgent).getAgentName());
				FINAL_MOVIE = proposedMovie;
			}
			else
			{
				event = 0;
				ACLMessage accept = proposal.createReply();
				accept.setPerformative(ACLMessage.REJECT_PROPOSAL);
				myAgent.send(accept);					
				System.out.println("The proposal has been rejected by " + ((Agent_negotiator)myAgent).getAgentName());
			}
		}
		
		
		catch (CodecException ce) {
			ce.printStackTrace();
		}
		catch (OntologyException oe) {
			oe.printStackTrace();
		}	
	}

	@Override
	public boolean done() {
		return true; //It will always return true because it does not have to wait for any messages
	}
	
	@Override
	public int onEnd() {
		return event;
	}

}