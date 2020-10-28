package fsm;

import agents.AgentNegotiator;
import jade.core.behaviours.Behaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;

/*
 * Es un comportamiento ciclico que lo que va a estar haciendo es esperar por una propuesta inicial, cuando me llega una propuesta inicial
 * creo la maquina de estados finita y le digo que arranque evaluando la propyesta y respondiendo. Esto lo hago pasando el falso por parametro
 * Espera por un propose para que le contrate un servicio.
 */
public class EsperarPropuestaInicialBehaviour extends Behaviour {
   
	@Override
	public void action() {
		
		ACLMessage prop_ini = myAgent.receive( //Recivo una propuesta y el ReplyTo es vacio entonces puedo saber que es una propuesta inicial
						MessageTemplate.and(
						MessageTemplate.MatchPerformative(ACLMessage.PROPOSE), 
						MessageTemplate.MatchInReplyTo(""))); // Estamos seguros que es una propuesta inicial cuando el replyto es vacio, porque el primer mensaje de una conversacion no tiene un rely
		
		if (prop_ini != null) {
			myAgent.addBehaviour(new MCPBehaviour(false, prop_ini,null)); // el parametro es false porque es e que responde, no es el inicial
			System.out.println(((AgentNegotiator)myAgent).getNombre() + " has received the initial proposal ");
		}
		else
			block();
	}

	
		
	
	
	@Override
	public boolean done() {
		return false;
	}

}
