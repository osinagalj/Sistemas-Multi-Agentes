package agentes;

import jade.content.ContentElement;
import jade.content.lang.Codec;
import jade.content.lang.Codec.CodecException;
import jade.content.lang.sl.SLCodec;
import jade.content.onto.Ontology;
import jade.content.onto.OntologyException;
import jade.content.onto.basic.Action;
import jade.core.Agent;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;
import agents.ontologies.OntologiaCliente2;

public class AgenteReceptor extends Agent {
	
	private Codec codec = new SLCodec();
	private Ontology ontology = OntologiaCliente2.getInstance();

	protected void setup() {
		getContentManager().registerLanguage(codec);
		getContentManager().registerOntology(ontology);
		
		MessageTemplate mt = MessageTemplate.and(
				MessageTemplate.MatchLanguage(codec.getName()),
				MessageTemplate.MatchOntology(ontology.getName()) );
		ACLMessage msg = blockingReceive(mt);
		try {
			ContentElement ce = null;
			if (msg.getPerformative() == ACLMessage.INFORM) {
				ce = getContentManager().extractContent(msg);
				EsCliente p = (EsCliente)ce;
				Cliente c = p.getCliente();
				System.out.println(c);
			} 
		}
		catch (CodecException ce) {
			ce.printStackTrace();
		}
		catch (OntologyException oe) {
			oe.printStackTrace();
		}
	}

}
