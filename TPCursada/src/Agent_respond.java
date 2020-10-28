import jade.core.Agent;
public class Agent_respond extends Agent{
	
	protected void setup() {
		System.out.println("el agente " + getAID().getName() + "esta activo");
		
		this.addBehaviour(new Agent_respond_behaviour()); 
	}
	

}
