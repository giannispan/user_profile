<%-- 
    Document   : profile_create
    Created on : Mar 26, 2014, 1:15:53 PM
    Author     : euclidres
--%>
<%@page import="java.nio.charset.StandardCharsets"%>
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


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String userid=request.getParameter("j_ID");
session.setAttribute("userid",userid);
String age1 = request.getParameter( "j_age" );
int age = Integer.parseInt(age1);
session.setAttribute( "theAge", age );
String name = request.getParameter( "j_name" );
byte[] bytes = name.getBytes(StandardCharsets.ISO_8859_1);
name = new String(bytes, StandardCharsets.UTF_8);
session.setAttribute( "theName", name );
String lastname = request.getParameter( "j_lastname" );
byte[] bytes2 = lastname.getBytes(StandardCharsets.ISO_8859_1);
lastname = new String(bytes2, StandardCharsets.UTF_8);
session.setAttribute( "theLastName", lastname );
String gender = request.getParameter( "j_gender" );
session.setAttribute( "theGender", gender );
String civil = request.getParameter( "j_civil" );
session.setAttribute( "theCivil", civil );
String edu = request.getParameter( "j_edu" );
session.setAttribute( "theEdu", edu );
String address = request.getParameter( "j_address" );
byte[] bytes3 = address.getBytes(StandardCharsets.ISO_8859_1);
lastname = new String(bytes3, StandardCharsets.UTF_8);
session.setAttribute( "theAddress", address );
String phone = request.getParameter( "j_phone" );
session.setAttribute( "thePhone", phone );
String email = request.getParameter( "j_email" );
session.setAttribute( "theEmail", email );
String pc = request.getParameter( "j_pc" );
session.setAttribute( "thePc", pc );
String pcUsage = request.getParameter( "j_pc_usage" );
session.setAttribute( "thePcUsage", pcUsage );
String pcReasons = request.getParameter( "j_pc_reasons" );
session.setAttribute( "thePcReasons", pcReasons );
String timeStudy = request.getParameter( "j_time_study" );
session.setAttribute( "theTimeStudy", timeStudy );
String previousExperience = request.getParameter( "j_previous_knowledge" );
session.setAttribute( "thePreviousExperience", previousExperience );

sesame2 sesame_item = new sesame2();

Repository rep = sesame_item.repository;
RepositoryConnection con = sesame_item.repositoryConnection;
RepositoryManager man = sesame_item.repositoryMan;

String queryString1;
String queryString2;
String queryString3;
String queryString4;

//-----------------------------------------dimografika -------------------------------------------------
            queryString1 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"demo rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:DemographicData;"
                    + "sm:name '"+name+"';"
                    + "sm:lastname '"+lastname+"';"
                    + "sm:age '"+age+"';"
                    + "sm:gender '"+gender+"';"
                    + "sm:civil_state '"+civil+"';"
                    + "sm:educational_level '"+edu+"';"
                    + "sm:home_address '"+address+"';"
                    + "sm:phone_number '"+phone+"';"
                    + "sm:email '"+email+"'."
                    + "?s sm:hasDemographics sm:student"+userid+"demo}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";

      Update upd = con.prepareUpdate(QueryLanguage.SPARQL, queryString1);
      upd.execute();

      
//----------------------------------------- xronos gia meleti ----------------------------------------------
      
queryString2 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"timeStudy rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:TimeStudy;"
                    + "sm:time_for_study '"+timeStudy+"'."
                    + "?s sm:hasTime sm:student"+userid+"timeStudy}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";

      Update upd2 = con.prepareUpdate(QueryLanguage.SPARQL, queryString2);
      upd2.execute();
      
/*      

//----------------------------------- e3oikeiwsi me texnologia -------------------------------------------------
      
if (pcUsage.equals("usage_daily") && (pcReasons.equals("reasons_prog") || pcReasons.equals("reasons_doc") || pcReasons.equals("reasons_net")) 
        || (pcUsage.equals("usage_weekly") && pcReasons.equals("reasons_prog"))){
    
    
      queryString3 =  "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"demo sm:computer_literacy 'advanced'.}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";
      
}

else if (pcUsage.equals("usage_never")) {

    queryString3 =  "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"demo sm:computer_literacy 'beginner'.}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";
}

else {

    queryString3 =  "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"demo sm:computer_literacy 'novice'.}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";
}

      Update upd3 = con.prepareUpdate(QueryLanguage.SPARQL, queryString3);
      upd3.execute();

 */
      
//--------------------------------------- prohgoumenh empeiria -----------------------------------------------

if (previousExperience.equals("previous_aei") || (previousExperience.equals("previous_job"))){
    
    
      queryString4 =  "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"previousExperience rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:PreviousExperience;"
                    + "sm:previous_experience 'advanced'."
                    + "?s sm:hasExperience sm:student"+userid+"previousExperience}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";
   
}

else if (previousExperience.equals("previous_iek") || (previousExperience.equals("previous_personal"))) {

    queryString4 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"previousExperience rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:PreviousExperience;"
                    + "sm:previous_experience 'novice'."
                    + "?s sm:hasExperience sm:student"+userid+"previousExperience}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";
     
}

else {
    
    queryString4 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"previousExperience rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:PreviousExperience;"
                    + "sm:previous_experience 'beginner'."
                    + "?s sm:hasExperience sm:student"+userid+"previousExperience}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";
 
}

      Update upd4 = con.prepareUpdate(QueryLanguage.SPARQL, queryString4);
      upd4.execute();

%>

<!DOCTYPE html>
<html>
    <head>
        <title>Δημιουργία Προφίλ Εκπαιδευόμενου</title>
    </head>
    <body>
        <h2>Τα δημογραφικά σας στοιχεία έχουν εισαχθεί!</h2>
      <form action="learning_style.jsp" method="post">
      <button type="submit"> Συνέχεια </button>
      </form>
    </body>
</html>
