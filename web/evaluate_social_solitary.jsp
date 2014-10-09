<%-- 
    Document   : evaluate_social_solitary
    Created on : Mar 31, 2014, 1:17:29 PM
    Author     : euclidres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*,java.text.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="sesame.sesame2"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="org.openrdf.query.MalformedQueryException"%>
<%@page import="org.openrdf.query.QueryEvaluationException"%>
<%@page import="org.openrdf.query.QueryLanguage"%>
<%@page import="org.openrdf.query.Update"%>
<%@page import="org.openrdf.query.UpdateExecutionException"%>
<%@page import="org.openrdf.repository.Repository"%>
<%@page import="org.openrdf.repository.RepositoryConnection"%>
<%@page import="org.openrdf.repository.RepositoryException"%>
<%@page import="org.openrdf.repository.config.RepositoryConfigException"%>
<%@page import="org.openrdf.repository.manager.RemoteRepositoryManager"%>
<%@page import="org.openrdf.repository.manager.RepositoryManager"%>
<%@page import="org.openrdf.rio.RDFParseException"%>



<%
sesame2 sesame_item = new sesame2();

Repository rep = sesame_item.repository;
RepositoryConnection con = sesame_item.repositoryConnection;
RepositoryManager man = sesame_item.repositoryMan;


request.getAttribute("userid");
String userid = session.getAttribute("userid").toString();
session.setAttribute("userid",userid);

String queryString1;
String question1 = request.getParameter("Energy");

if ("E".equals(question1)){



queryString1 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"social_ls rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:Social;"
                    + "sm:social_solitary_value 'true'."
                    + "?s sm:hasLearningStyle sm:student"+userid+"social_ls}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";

      Update upd = con.prepareUpdate(QueryLanguage.SPARQL, queryString1);
      upd.execute();
}

else if ("I".equals(question1)){

String queryString2;

queryString2 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"solitary_ls rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:Solitary;"
                    + "sm:social_solitaty_value 'true'."
                    + "?s sm:hasLearningStyle sm:student"+userid+"solitary_ls}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";
    
      
      Update upd2 = con.prepareUpdate(QueryLanguage.SPARQL, queryString2);
      upd2.execute();
}
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Δημιουργία Προφίλ Εκπαιδευόμενου</title>
    </head>
    <body>
        <h2>Η δημιουργία του προφίλ σας ολοκληρώθηκε!</h2>
    </body>
</html>
