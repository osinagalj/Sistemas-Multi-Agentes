package agents.ontologies;

import agents.City;
import agents.Cliente;
import agents.EsCliente;
import agents.Persona;
import jade.content.onto.BasicOntology;
import jade.content.onto.Ontology;
import jade.content.onto.OntologyException;
import jade.content.schema.ConceptSchema;
import jade.content.schema.ObjectSchema;
import jade.content.schema.PredicateSchema;
import jade.content.schema.PrimitiveSchema;

public class OntologiaCliente extends Ontology {
	
	public static final String ONTOLOGY_NAME = "Ontologia-cliente";
	
	public static final String PERSONA = "Persona";
	public static final String PERSONA_NOMBRE = "nombre";
	public static final String CIUDAD = "Ciudad";
	public static final String CIUDAD_NOMBRE = "nombre";
	public static final String PERSONA_EDAD = "edad";
	
	public static final String CLIENTE = "Cliente";
	public static final String CLIENTE_NUMERO = "numCliente";
	
	public static final String ES_CLIENTE = "EsCliente";
	public static final String PCLIENTE = "cliente";
	
	private static Ontology instance = new OntologiaCliente();

	public static Ontology getInstance() { return instance; }


	// Private constructor
	private OntologiaCliente() {
		super(ONTOLOGY_NAME, BasicOntology.getInstance());
		try {
			add(new ConceptSchema(PERSONA), Persona.class);
			add(new ConceptSchema(CLIENTE), Cliente.class);
			add(new ConceptSchema(CIUDAD), City.class);
			add(new PredicateSchema(ES_CLIENTE), EsCliente.class);
			
			ConceptSchema cs = (ConceptSchema) getSchema(PERSONA);
			cs.add(PERSONA_NOMBRE, (PrimitiveSchema)getSchema(BasicOntology.STRING),ObjectSchema.MANDATORY);
			cs.add(PERSONA_EDAD, (PrimitiveSchema)getSchema(BasicOntology.INTEGER), ObjectSchema.OPTIONAL);
			cs.add(CIUDAD, (ConceptSchema) getSchema(CIUDAD), ObjectSchema.MANDATORY);
			
			cs = (ConceptSchema) getSchema(CLIENTE);
			cs.addSuperSchema((ConceptSchema)getSchema(PERSONA));
			cs.add(CLIENTE_NUMERO, (PrimitiveSchema)getSchema(BasicOntology.INTEGER), ObjectSchema.MANDATORY);
			
			cs = (ConceptSchema) getSchema(CIUDAD);
			cs.add(CIUDAD_NOMBRE, (PrimitiveSchema)getSchema(BasicOntology.STRING),ObjectSchema.MANDATORY);
			
			PredicateSchema ps = (PredicateSchema)getSchema(ES_CLIENTE);
			ps.add(PCLIENTE, (ConceptSchema) getSchema(CLIENTE), ObjectSchema.MANDATORY);
			
		}
		catch (OntologyException oe) { oe.printStackTrace();}

	}

}
