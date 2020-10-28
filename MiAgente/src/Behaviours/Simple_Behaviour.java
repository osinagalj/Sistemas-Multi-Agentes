package Behaviours;

import jade.core.behaviours.*;

public class Simple_Behaviour extends Behaviour {
	
	public void action() {
		System.out.println("El agente " + myAgent.getAID().getName()+ "esta activo");
	}
	
	public boolean done() {
		return true;
	}
	
}
