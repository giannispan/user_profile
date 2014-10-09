/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sesame;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import org.openrdf.OpenRDFException;
import org.openrdf.repository.Repository;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;
import org.openrdf.repository.config.RepositoryConfigException;
import org.openrdf.repository.http.HTTPRepository;
import org.openrdf.repository.manager.RemoteRepositoryManager;
import org.openrdf.repository.manager.RepositoryManager;
import org.openrdf.rio.RDFFormat;

/**
 *
 * @author euclidres
 */
public class sesame3 {
    
   // private Repository repository;

	// From repository.getConnection() - the connection through which we will
	// use the repository
	// private RepositoryConnection repositoryConnection;
        
        private sesame3() throws IOException, RepositoryConfigException, RepositoryException{
        String sesameServer = "http://localhost:8084/openrdf-sesame";
        String repositoryID = "03";

RepositoryManager repositoryManager = new RemoteRepositoryManager("http://localhost:8084/openrdf-sesame");
repositoryManager.initialize();
Repository repository = repositoryManager.getRepository(repositoryID);
RepositoryConnection con = repository.getConnection();
Repository xxx = new HTTPRepository(sesameServer, repositoryID);
xxx.initialize();
       

String baseURI = "http://eeyem.eap.gr/ontologies/2011/Student_Model_updated"; 
try {
   try {
      File file = new File("/home/euclidres/Desktop/student_profile_ont/student_model_mine2.owl");
     // output = new FileOutputStream(file);
      
      if (!file.exists()) {
				file.createNewFile();
			}
      con.add(file, baseURI, RDFFormat.RDFXML);

      URL url = new URL("http://localhost:8084/openrdf-sesame/repositories/03");
      con.add(url, url.toString(), RDFFormat.RDFXML);
   }
   finally {
      con.close();
   }
}
catch (OpenRDFException e) {
   // handle exception
}
        }
        
         public static void main(String[] args) throws IOException, RepositoryConfigException, RepositoryException  {
             new sesame3();
            
}
    
}
