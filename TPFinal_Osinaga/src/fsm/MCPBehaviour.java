package fsm;
import jade.core.AID; 
import jade.core.behaviours.DataStore;
import jade.core.behaviours.FSMBehaviour;
import jade.lang.acl.ACLMessage;


public class MCPBehaviour extends FSMBehaviour {
	
	private static final String SEND_PROPOSAL = "send-proposal";
	private static final String EVALUATE_PROPOSAL = "evalute-proposal";
	private static final String WAIT_ANSWER = "wait-answer";
	private static final String CALCULATE_Z = "calculate-zeuthen";
	private static final String WAIT_PROPOSAL = "wait-proposal";
	private static final String CONFLICT = "conflict";
	private static final String AGREEMENT = "agreement";
	private static final String RECEIVE_Z = "receive-z";
	
	public static final String IDR = "ID-Responder";
	public static final String MESSAGE_TEMPLATE = "message-template";
	public static final String PROPOSAL = "proposal";
	public static final String LAST_MSG = "last-msg"; 
	public static final String LAST_ZEUTHEN = "last-zeuthen";
	
	public MCPBehaviour(boolean initiator, ACLMessage prop_ini,AID id) 	// The boolean initiator is used to identify if the proposal is the initial one or not
	{ 
		DataStore ds = new DataStore();
			    
		SendProposalBehaviour sendProposal = new SendProposalBehaviour();
		Wait_answer_behaviour waitAnswer = new Wait_answer_behaviour();
		Calculate_zeuthen_behaviour calculate_z = new Calculate_zeuthen_behaviour();
		Receive_zeuthen_behaviour receive_z = new Receive_zeuthen_behaviour();
		Wait_proposal_behaviour waitProposal = new Wait_proposal_behaviour();
		Evaluate_proposal_behaviour evaluteProposal = new Evaluate_proposal_behaviour();	
		Conflict_behaviour conflict = new Conflict_behaviour();
		Agreement_behaviour agreement = new Agreement_behaviour();
		
		ds.put(IDR, id);
		sendProposal.setDataStore(ds);
		waitAnswer.setDataStore(ds);
		calculate_z.setDataStore(ds);
		receive_z.setDataStore(ds);
		waitProposal.setDataStore(ds);
		evaluteProposal.setDataStore(ds);
		conflict.setDataStore(ds);
		agreement.setDataStore(ds);
		
		//----------------    States	---------------------- //
		if (initiator) {
			this.registerFirstState(sendProposal, SEND_PROPOSAL);
			this.registerState(evaluteProposal, EVALUATE_PROPOSAL);
		}
		else {
			this.registerFirstState(evaluteProposal, EVALUATE_PROPOSAL);
			this.registerState(sendProposal, SEND_PROPOSAL);
			ds.put(PROPOSAL, prop_ini);
			ds.put(LAST_MSG, prop_ini);
		}
		this.registerState(waitAnswer, WAIT_ANSWER);
		this.registerState(calculate_z, CALCULATE_Z);
		this.registerState(receive_z, RECEIVE_Z);
		this.registerState(waitProposal, WAIT_PROPOSAL);
		this.registerLastState(conflict, CONFLICT);
		this.registerLastState(agreement, AGREEMENT);
		
		//---------------- Transitions	----------------------//
		//SEND_PROPOSAL
		this.registerTransition(SEND_PROPOSAL, WAIT_ANSWER, 0);
		this.registerTransition(SEND_PROPOSAL, CONFLICT, 1);
		//WAIT_ANSWER
		String[] toBeReset1 = {WAIT_ANSWER}; 
		this.registerTransition(WAIT_ANSWER, CALCULATE_Z, 0, toBeReset1);
		this.registerTransition(WAIT_ANSWER, AGREEMENT, 1);
		//CALCULATE_Z
		this.registerDefaultTransition(CALCULATE_Z, RECEIVE_Z);
		//RECEIVE_Z
		String[] toBeReset2 = {RECEIVE_Z};
		this.registerTransition(RECEIVE_Z, SEND_PROPOSAL, 0, toBeReset2);
		this.registerTransition(RECEIVE_Z, WAIT_PROPOSAL, 1, toBeReset2);
		//WAIT_PROPOSAL
		String[] toBeReset3 = {WAIT_PROPOSAL};
		this.registerDefaultTransition(WAIT_PROPOSAL, EVALUATE_PROPOSAL, toBeReset3); //El reset es para resetear el flag
		//EVALUATE_PROPOSAL
		this.registerTransition(EVALUATE_PROPOSAL, CALCULATE_Z, 0);
		this.registerTransition(EVALUATE_PROPOSAL, AGREEMENT, 1);
		this.registerTransition(EVALUATE_PROPOSAL, CONFLICT, 2);
		
		
	}

}
