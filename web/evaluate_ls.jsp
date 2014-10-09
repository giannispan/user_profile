<%-- 
    Document   : evaluate_ls
    Created on : Mar 31, 2014, 11:21:19 AM
    Author     : euclidres
--%>

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


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%int k,v,r,a;
k=0;
v=0;
r=0;  
a=0;
String question1[] = request.getParameterValues("q1");
if (question1!= null){
for (int i =0; i<question1.length; i++){
if (question1[i].equals("1.1")){
k = k+1;
}
if (question1[i].equals("1.2")) {
a = a+1 ; 
}
if (question1[i].equals("1.3")) {
r = r+1 ; 
   }
if (question1[i].equals("1.4")) {
v = v+1 ; 
   }  
  }
}
String question2[] = request.getParameterValues("q2");
if (question2!= null){
for (int i =0; i<question2.length; i++){
if (question2[i].equals("2.1")){
    v = v+1;
}
if (question2[i].equals("2.2")) {
a = a+1 ; 
}
if (question2[i].equals("2.3")) {
r = r+1 ; 
   }
if (question2[i].equals("2.4")) {
k = k+1 ; 
   }
  }
}
String question3[] = request.getParameterValues("q3");
if (question3!= null){
for (int i =0; i<question3.length; i++){
if (question3[i].equals("3.1")){
    k = k+1;
}
if (question3[i].equals("3.2")) {
v = v+1 ; 
}
if (question3[i].equals("3.3")) {
r = r+1 ; 
   }
if (question3[i].equals("3.4")) {
a = a+1 ; 
   }
  }
}
String question4[] = request.getParameterValues("q4");
if (question4!= null){
for (int i =0; i<question4.length; i++){
if (question4[i].equals("4.1")){
    k = k+1;
}
if (question4[i].equals("4.2")) {
a = a+1 ; 
}
if (question4[i].equals("4.3")) {
v = v+1 ; 
   }
if (question4[i].equals("4.4")) {
r = r+1 ; 
   }
  }
}
String question5[] = request.getParameterValues("q5");
if (question5!= null){
for (int i =0; i<question5.length; i++){
if (question5[i].equals("5.1")){
    a = a+1;
}
if (question5[i].equals("5.2")) {
v = v+1 ; 
}
if (question5[i].equals("5.3")) {
k = k+1 ; 
   }
if (question5[i].equals("5.4")) {
r = r+1 ; 
   }
  }
}
String question6[] = request.getParameterValues("q6");
if (question6!= null){
for (int i =0; i<question6.length; i++){
if (question6[i].equals("6.1")){
    k = k+1;
}
if (question6[i].equals("6.2")) {
r = r+1 ; 
}
if (question6[i].equals("6.3")) {
v = v+1 ; 
   }
if (question6[i].equals("6.4")) {
a = a+1 ; 
   }
  }
}
String question7[] = request.getParameterValues("q7");
if (question7!= null){
for (int i =0; i<question7.length; i++){
if (question7[i].equals("7.1")){
    k = k+1;
}
if (question7[i].equals("7.2")) {
a = a+1 ; 
}
if (question7[i].equals("7.3")) {
v = v+1 ; 
   }
if (question7[i].equals("7.4")) {
r = r+1 ; 
   }
  }
}
String question8[] = request.getParameterValues("q8");
if (question8!= null){
for (int i =0; i<question8.length; i++){
if (question8[i].equals("8.1")){
    r = r+1;
}
if (question8[i].equals("8.2")) {
k = k+1 ; 
}
if (question8[i].equals("8.3")) {
a = a+1 ; 
   }
if (question8[i].equals("8.4")) {
v = v+1 ; 
   }
  }
}
String question9[] = request.getParameterValues("q9");
if (question9!= null){
for (int i =0; i<question9.length; i++){
if (question9[i].equals("9.1")){
    r = r+1;
}
if (question9[i].equals("9.2")) {
a = a+1 ; 
}
if (question9[i].equals("9.3")) {
k = k+1 ; 
   }
if (question9[i].equals("9.4")) {
v = v+1 ; 
   }
  }
}
String question10[] = request.getParameterValues("q10");
if (question10!= null){
for (int i =0; i<question10.length; i++){
if (question10[i].equals("10.1")){
    k = k+1;
}
if (question10[i].equals("10.2")) {
v = v+1 ; 
}
if (question10[i].equals("10.3")) {
r = r+1 ; 
   }
if (question10[i].equals("10.4")) {
a = a+1 ; 
   }
  }
}
String question11[] = request.getParameterValues("q11");
if (question11!= null){
for (int i =0; i<question11.length; i++){
if (question11[i].equals("11.1")){
    v = v+1;
}
if (question11[i].equals("11.2")) {
r = r+1 ; 
}
if (question11[i].equals("11.3")) {
a = a+1 ; 
   }
if (question11[i].equals("11.4")) {
k = k+1 ; 
   }
  }
}
String question12[] = request.getParameterValues("q12");
if (question12!= null){
for (int i =0; i<question12.length; i++){
if (question12[i].equals("12.1")){
    a = a+1;
}
if (question12[i].equals("12.2")) {
r = r+1 ; 
}
if (question12[i].equals("12.3")) {
v = v+1 ; 
   }
if (question12[i].equals("12.4")) {
k = k+1 ; 
   }
  }
}
String question13[] = request.getParameterValues("q13");
if (question13!= null){
for (int i =0; i<question13.length; i++){
if (question13[i].equals("13.1")){
    k = k+1;
}
if (question13[i].equals("13.2")) {
a = a+1 ; 
}
if (question13[i].equals("13.3")) {
r = r+1 ; 
   }
if (question13[i].equals("13.4")) {
v = v+1 ; 
   }
  }
}
String question14[] = request.getParameterValues("q14");
if (question14!= null){
for (int i =0; i<question14.length; i++){
if (question14[i].equals("14.1")){
    k = k+1;
}
if (question14[i].equals("14.2")) {
r = r+1 ; 
}
if (question14[i].equals("14.3")) {
a = a+1 ; 
   }
if (question14[i].equals("14.4")) {
v = v+1 ; 
   }
  }
}
String question15[] = request.getParameterValues("q15");
if (question15!= null){
for (int i =0; i<question15.length; i++){
if (question15[i].equals("15.1")){
    k = k+1;
}
if (question15[i].equals("15.2")) {
a = a+1 ; 
}
if (question15[i].equals("15.3")) {
r = r+1 ; 
   }
if (question15[i].equals("15.4")) {
v = v+1 ; 
   }
  }
}
String question16[] = request.getParameterValues("q16");
if (question16!= null){
for (int i =0; i<question16.length; i++){
if (question16[i].equals("16.1")){
    v = v+1;
}
if (question16[i].equals("16.2")) {
a = a+1 ; 
}
if (question16[i].equals("16.3")) {
r = r+1 ; 
   }
if (question16[i].equals("16.4")) {
k = k+1 ; 
   }
  }
}

sesame2 sesame_item = new sesame2();

Repository rep = sesame_item.repository;
RepositoryConnection con = sesame_item.repositoryConnection;
RepositoryManager man = sesame_item.repositoryMan;


request.getAttribute("userid");
String userid = session.getAttribute("userid").toString();
session.setAttribute("userid",userid);


String queryString1;
String queryString2;
String queryString3;
String queryString4;

queryString1 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"aural_ls rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:Aural;"
                    + "sm:learning_style_value '"+a+"'."
                    + "?s sm:hasLearningStyle sm:student"+userid+"aural_ls}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";

queryString2 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"visual_ls rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:Visual;"
                    + "sm:learning_style_value '"+v+"'."
                    + "?s sm:hasLearningStyle sm:student"+userid+"visual_ls}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";

queryString3 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"read_write_ls rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:ReadWrite;"
                    + "sm:learning_style_value '"+r+"'."
                    + "?s sm:hasLearningStyle sm:student"+userid+"read_write_ls}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";

queryString4 = "PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
                    + "PREFIX owl:<http://www.w3.org/2002/07/owl#>"
                    + "PREFIX  sm:<http://eeyem.eap.gr/ontologies/2011/Student_Model_updated.owl#>"
                    + "INSERT {sm:student"+userid+"kinesthetic_ls rdf:type owl:NamedIndividual;"
                    + " rdf:type sm:Kinesthetic;"
                    + "sm:learning_style_value '"+k+"'."
                    + "?s sm:hasLearningStyle sm:student"+userid+"kinesthetic_ls}"
                    + "WHERE {?s a sm:Student ; sm:_mod_userKey '"+userid+"'}";

      Update upd = con.prepareUpdate(QueryLanguage.SPARQL, queryString1);
      upd.execute();
      
      Update upd2 = con.prepareUpdate(QueryLanguage.SPARQL, queryString2);
      upd2.execute();
      
      Update upd3 = con.prepareUpdate(QueryLanguage.SPARQL, queryString3);
      upd3.execute();
      
      Update upd4 = con.prepareUpdate(QueryLanguage.SPARQL, queryString4);
      upd4.execute();

%>
<html>
    <head>
        <title>Αποτελέσματα</title>
    </head>
    <body>
        <p>Τα αποτελέσματά σας είναι:</p><br>
        <ul>
            <li>Οπτικός:<%=v%></li>
            <li>Ακουστικός:<%=a%></li>
            <li>Προτίμηση στην ανάγνωση/γραφή:<%=r%></li>
            <li>Κιναισθητικός: <%=k%></li>
        </ul>
        <form action="social_solitary.jsp" method="get">
        <button type="submit"> Συνέχεια </button>
      </form>
    </body>
</html>
