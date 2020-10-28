package fsm;

import jade.core.AID; 
import jade.core.behaviours.DataStore;

import jade.core.behaviours.FSMBehaviour;
import jade.lang.acl.ACLMessage;
public class MCPBehaviour extends FSMBehaviour {
	
	private static final String ENVIAR_PROP = "enviar-prop";
	private static final String EVAL_PROP = "eval-prop";
	private static final String ESPERAR_RTA = "esperar-rta";
	private static final String CALC_Z = "calc-z";
	private static final String ESPERAR_PROP = "esperar-prop";
	private static final String CONFLICTO = "conflicto";
	private static final String ACUERDO = "acuerdo";
	private static final String RECIBIR_Z = "recibir-z";
	
	public static final String IDR = "ID-Responder";
	public static final String MESSAGE_TEMPLATE = "message-template";
	public static final String PROPUESTA = "propuesta";
	public static final String ULTIMO_MSG = "ultimo-msg"; //es un mensaje que lo usamos como clave para todo
	public static final String ULTIMO_ZEUTHEN = "ultimo-zeuthen";
	
	
	
	public MCPBehaviour(boolean initiator, ACLMessage prop_ini,AID id) { //El boolean initiatir es para identificar si la propuesta es la inicial o no
	
		DataStore ds = new DataStore();
		
		EnviarPropuestaBehaviour enviarProp = new EnviarPropuestaBehaviour();
		EsperarRespuestaBehaviour esperarRta = new EsperarRespuestaBehaviour();
		CalcularZeuthenBehaviour calcZ = new CalcularZeuthenBehaviour();
		RecibirZeuthenBehaviour recibirZ = new RecibirZeuthenBehaviour();
		EsperarPropuestaBehaviour esperarProp = new EsperarPropuestaBehaviour();
		EvaluarPropuestaBehaviour evalProp = new EvaluarPropuestaBehaviour();	
		ConflictoBehaviour conflicto = new ConflictoBehaviour();
		AcuerdoBehaviour acuerdo = new AcuerdoBehaviour();
		
		ds.put(IDR, id);
		enviarProp.setDataStore(ds);
		esperarRta.setDataStore(ds);
		calcZ.setDataStore(ds);
		recibirZ.setDataStore(ds);
		esperarProp.setDataStore(ds);
		evalProp.setDataStore(ds);
		conflicto.setDataStore(ds);
		acuerdo.setDataStore(ds);
		
		if (initiator) {
			this.registerFirstState(enviarProp, ENVIAR_PROP);
			this.registerState(evalProp, EVAL_PROP);
			
		}
		else {
			this.registerFirstState(evalProp, EVAL_PROP);
			this.registerState(enviarProp, ENVIAR_PROP);
			ds.put(PROPUESTA, prop_ini);
			ds.put(ULTIMO_MSG, prop_ini);
		}
		
		this.registerState(esperarRta, ESPERAR_RTA);
		this.registerState(calcZ, CALC_Z);
		this.registerState(recibirZ, RECIBIR_Z);
		this.registerState(esperarProp, ESPERAR_PROP);
		
		this.registerLastState(conflicto, CONFLICTO);
		this.registerLastState(acuerdo, ACUERDO);
		
		// Transiciones
		this.registerTransition(ENVIAR_PROP, ESPERAR_RTA, 0);
		this.registerTransition(ENVIAR_PROP, CONFLICTO, 1);
		
		String[] toBeReset1 = {ESPERAR_RTA}; 
		this.registerTransition(ESPERAR_RTA, CALC_Z, 0, toBeReset1);
		this.registerTransition(ESPERAR_RTA, ACUERDO, 1);
		
		this.registerDefaultTransition(CALC_Z, RECIBIR_Z);
		
		String[] toBeReset2 = {RECIBIR_Z};
		this.registerTransition(RECIBIR_Z, ENVIAR_PROP, 0, toBeReset2);
		this.registerTransition(RECIBIR_Z, ESPERAR_PROP, 1, toBeReset2);
		
		String[] toBeReset3 = {ESPERAR_PROP};
		this.registerDefaultTransition(ESPERAR_PROP, EVAL_PROP, toBeReset3); //El reset es para resetear el flag
		
		this.registerTransition(EVAL_PROP, CALC_Z, 0);
		this.registerTransition(EVAL_PROP, ACUERDO, 1);
		this.registerTransition(EVAL_PROP, CONFLICTO, 2);
		
		
	}

}