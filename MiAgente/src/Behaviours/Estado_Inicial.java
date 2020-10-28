package Behaviours;

import jade.core.behaviours.Behaviour;

public class Estado_Inicial extends Behaviour {
	double random;
	@Override
	public void action() {
		// TODO Auto-generated method stub
		System.out.println("Estado Inicial");
		random = Math.random();
	}

	@Override
	public boolean done() {
		return !(random > 0.4 && random < 0.6);
		// TODO Auto-generated method stub
		
	}
	
	public int onEnd() {
		if(random > 0.5) {
			return 1;
			
		}else {
			return 0;
		}
	}

}
