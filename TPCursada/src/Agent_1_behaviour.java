import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import java.util.ArrayList;
import jade.core.AID;

public class Agent_1_behaviour extends Behaviour {
	
	static private int id_movie = 0;
	ArrayList<String> movies = new ArrayList<String>();
	public Agent_1_behaviour(){
		movies.add("Avatar");
		movies.add("Titanic");
		movies.add("The Avengers");
		movies.add("Jurassic World");
		movies.add("The Godfather");
	}
	


	@Override
	public void action(){
		
		ACLMessage msg = new ACLMessage(ACLMessage.PROPOSE);
		msg.setContent(movies.get(id_movie));
		id_movie++;
		msg.addReceiver(new AID("Agent_respond",AID.ISLOCALNAME));
		//setDataStore
		//msg.setOntology("Weather-forecast-ontology");
		msg.setConversationId(String.valueOf(System.currentTimeMillis()));
		myAgent.send(msg);
	}

	@Override
	public boolean done(){
		return true; 
	}
	

	
	public void load_movies(){
	
		
		/*
		movies.add("Back to the Future");
		movies.add("Spider-Man");
		movies.add("12 Years a Slave");
		movies.add("The Social Network");
		movies.add("The Old Guard");
		*/
	}
	
	
	/*
	
	public int onEnd(){

		ACLMessage msg = myAgent.receive();
		if(msg.getPerformative() == ACLMessage.ACCEPT_PROPOSAL) { 
				return 0; 
		}else {
				//if Reject proposal
				return 1 ;//tengo que enviar otra propuesta
		}
	}
	*/

}
