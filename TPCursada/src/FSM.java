import jade.core.behaviours.FSMBehaviour;
import jade.core.behaviours.DataStore;

public class FSM extends FSMBehaviour {
	
	public FSM(){
		DataStore ds = new DataStore();
		
		Agent_1_behaviour initial_state = new Agent_1_behaviour();
		State_1_behaviour state_1 = new State_1_behaviour();
		Final_state_behaviour final_state = new Final_state_behaviour();
		
		initial_state.setDataStore(ds);
		state_1.setDataStore(ds);
		final_state.setDataStore(ds);
		
		//States
		this.registerFirstState(initial_state,"initial_state");
		this.registerState(state_1,"state_1");
		this.registerLastState(final_state,"final_state");
		
		//transitions
		this.registerDefaultTransition("initial_state", "state_1");	
		String[] toBeReset = {"state_1"};
		
		this.registerTransition("state_1", "initial_state", 1, toBeReset);
		this.registerTransition("state_1", "final_state", 0);

		
	}
}
