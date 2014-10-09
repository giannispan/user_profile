/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sesame;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.openrdf.OpenRDFException;
import org.openrdf.repository.Repository;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;
import org.openrdf.repository.config.RepositoryConfigException;
import org.openrdf.repository.http.HTTPRepository;
import org.openrdf.repository.manager.RemoteRepositoryManager;
import org.openrdf.repository.manager.RepositoryManager;
import org.openrdf.rio.RDFFormat;
import org.openrdf.rio.RDFParseException;

/**
 *
 * @author euclidres
 */

public class sesame {
    

private void initialize() throws RepositoryException{
        
        final String repositoryServer = "http://localhost:8084/openrdf-sesame";
        final String repositoryId = "02";
        
         RepositoryManager repositoryManager = new RemoteRepositoryManager("http://localhost:8084/openrdf-sesame/repositories/");
            try {
                repositoryManager.initialize();
            } catch (RepositoryException ex) {
                Logger.getLogger(sesame.class.getName()).log(Level.SEVERE, null, ex);
            }
            Repository repository = null;
            try {
                repository = repositoryManager.getRepository("02");
            } catch (RepositoryConfigException ex) {
                Logger.getLogger(sesame.class.getName()).log(Level.SEVERE, null, ex);
            } catch (RepositoryException ex) {
                Logger.getLogger(sesame.class.getName()).log(Level.SEVERE, null, ex);
            }

	// Open a connection to this repository
        RepositoryConnection con = repository.getConnection();
        File file = new File("/home/euclidres/Desktop/student_profile_ont/student_model_mine2.owl");
        String baseURI = "http://example.org/owilim";
            try {
                con.add(file, baseURI, RDFFormat.RDFXML);
            } catch (IOException ex) {
                Logger.getLogger(sesame.class.getName()).log(Level.SEVERE, null, ex);
            } catch (RDFParseException ex) {
                Logger.getLogger(sesame.class.getName()).log(Level.SEVERE, null, ex);
            }
                 }


public static void main(String[] args)  {
    sesame sesame_item = new sesame();

}

}





