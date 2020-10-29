package fsm;
import jade.core.behaviours.Behaviour;

//
//Possible final state, where the agents did not reach an agreement
//

public class Conflict_behaviour extends Behaviour {

	@Override
	public void action() {
		System.out.print("The agents have not reached an agreement");
	}

	@Override
	public boolean done() {
		return true;
	}

}
