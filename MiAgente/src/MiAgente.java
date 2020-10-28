import Behaviours.Simple_Behaviour;
import Behaviours.MyFSM;

import jade.Boot;
import jade.core.Agent;
import jade.wrapper.*;

public class MiAgente extends Agent {
	Object i[];
	protected void setup() {
		System.out.println("El agente" + getAID().getName() + "esta activo");
		
		//this.addBehaviour(new Simple_Behaviour()); 
		//this.addBehaviour(new MyFSM()); 
		
		AgentContainer c = getContainerController();
		try {
			
	       AgentController control = c.createNewAgent( "cacho", 	"MiAgente2",null);
	      control.start();
	  }
	  catch (StaleProxyException e){}
		
	}
	protected void takeDown() {
		
		AgentContainer c = getContainerController();
		try {
			
	       AgentController control = c.createNewAgent( "cacho", 	"MiAgente2",null);
	      control.start();
	  }
	  catch (StaleProxyException e){}
		
		/*
		AgentContainer c = getContainerController();
		try {
			i[0] = (Integer)i[0] + 1;
	       AgentController control = c.createNewAgent( "cacho" + i[0], 	"MiAgente2", i );
	      control.start();
	  }
	  catch (StaleProxyException e){}
	  */
	}
	
}
