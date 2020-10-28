package agents;

import agents.ontologies.OntologiaCliente; 
import jade.content.lang.Codec;
import jade.content.lang.Codec.CodecException;
import jade.content.lang.sl.SLCodec;
import jade.content.onto.Ontology;
import jade.content.onto.OntologyException;
import jade.content.onto.basic.Action;
import jade.core.AID;
import jade.core.Agent;
import jade.core.behaviours.OneShotBehaviour;
import jade.lang.acl.ACLMessage;

public class AgenteEmisor extends Agent {
	private Codec codec = new SLCodec();
	private Ontology ontology = OntologiaCliente.getInstance();

	protected void setup() {
		getContentManager().registerLanguage(codec);
		getContentManager().registerOntology(ontology);
		
			addBehaviour(new OneShotBehaviour() {
				public void action() {
					Cliente cliente = new Cliente();
					cliente.setNombre("Juan Perez");
					cliente.setEdad(25);
					cliente.setNumCliente(1919);
					
					
					City cd =  new City();
					cd.setNombre("Tandil");
					cliente.setCiudad(cd);
					
					try {
						ACLMessage msg = new ACLMessage(ACLMessage.INFORM); 
						msg.addReceiver(new AID("Receptor",AID.ISLOCALNAME));
						msg.setLanguage(codec.getName());
						msg.setOntology(ontology.getName());
						System.out.println(cliente);
						getContentManager().fillContent(msg, new EsCliente(cliente));
						send(msg);
					}
					catch (CodecException ce) {
						ce.printStackTrace();
					}
					catch (OntologyException oe) {
						oe.printStackTrace();
					}

				}
			});
	}
	
	
}
