package Behaviours;

import jade.core.behaviours.FSMBehaviour;
import jade.core.behaviours.DataStore;

public class MyFSM extends FSMBehaviour {
	
	public MyFSM(){ //Es una maquina de estado compuesta por 4 estados y 4 transiciones
		DataStore ds = new DataStore();
		System.out.println("El agente MyFSM esta activo");
		
		//Estados
		Estado_Inicial e_inicial = new Estado_Inicial();
		Estado_final e_final = new Estado_final();
		Estado_1 e_1 = new Estado_1();
		Estado_2 e_2 = new Estado_2();
		
		//DataStore a cada estado
		e_inicial.setDataStore(ds);
		e_final.setDataStore(ds);
		e_1.setDataStore(ds);
		e_2.setDataStore(ds);
		
		//Registramos los estados
		this.registerFirstState(e_inicial, "e_inicial");
		this.registerState(e_1, "e_1");
		this.registerState(e_2, "e_2");
		this.registerLastState(e_final, "e_final");
		
		//Registramos los eventos
		this.registerTransition("e_inicial", "e_1", 0);
		this.registerTransition("e_inicial", "e_2", 1);
		
		this.registerDefaultTransition("e_1","e_final");
		this.registerDefaultTransition("e_2","e_final");
	}
	
	
}
