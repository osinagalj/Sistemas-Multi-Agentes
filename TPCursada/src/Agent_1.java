
import jade.core.Agent;

public class Agent_1 extends Agent {
		
	
	protected void setup() {
		System.out.println("El agente" + getAID().getName() + "esta activo");

		this.addBehaviour(new FSM());
		
	}
	
}
