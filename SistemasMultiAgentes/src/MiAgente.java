import jade.Boot;
import jade.core.Agent;

public class MiAgente extends Agent {
	protected void setup() {
		System.out.println("El agente" + getAID().getName() + "esta activo");
		
		Boot b = new Boot();
		
	}
}
