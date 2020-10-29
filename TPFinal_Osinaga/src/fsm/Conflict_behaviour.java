package fsm;

import jade.core.behaviours.Behaviour;

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
