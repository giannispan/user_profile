/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sesame;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util.println;
import java.io.File;
import java.io.IOException;
import org.openrdf.query.MalformedQueryException;
import org.openrdf.query.QueryEvaluationException;
import org.openrdf.query.QueryLanguage;
import org.openrdf.query.Update;
import org.openrdf.query.UpdateExecutionException;
import org.openrdf.repository.Repository;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;
import org.openrdf.repository.config.RepositoryConfigException;
import org.openrdf.repository.manager.RemoteRepositoryManager;
import org.openrdf.repository.manager.RepositoryManager;
import org.openrdf.rio.RDFFormat;
import org.openrdf.rio.RDFParseException;

/**
 *
 * @author euclidres
 */
public class sesame2 {
    
    // The repository manager
	public RepositoryManager repositoryMan;

	// From repositoryManager.getRepository(...) - the actual repository we will
	// work with
	public Repository repository;

	// From repository.getConnection() - the connection through which we will
	// use the repository
	public RepositoryConnection repositoryConnection;
  
       public sesame2() throws RepositoryException, RepositoryConfigException, IOException, RDFParseException, MalformedQueryException, QueryEvaluationException, UpdateExecutionException{
            
        
        File ontology = new File("/home/euclidres/Desktop/student_profile_ont/student_model_mine3.owl");
        String repositoryId = "02";
        println("Using configuration file: " + ontology.getAbsolutePath());
        
         repositoryMan = new RemoteRepositoryManager("http://localhost:8084/openrdf-sesame");
         repositoryMan.initialize();
         
       // Get the repository to use
       repository = repositoryMan.getRepository(repositoryId);
           
       // Open a connection to this repository
       repositoryConnection = repository.getConnection();
           
      //add ontology to repository
       String baseURI = "http://eeyem.eap.gr/ontologies/2011/Student_Model";
       repositoryConnection.add(ontology, baseURI, RDFFormat.RDFXML);
       repositoryConnection.close();
        }
  
        public static void main(String[] args) throws RepositoryException, RepositoryConfigException, IOException, RDFParseException, MalformedQueryException, QueryEvaluationException, UpdateExecutionException  {
            sesame2 sesame_item = new sesame2();
            
}
}
    

