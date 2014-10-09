<%-- 
    Document   : form
    Created on : Mar 26, 2014, 12:48:41 PM
    Author     : euclidres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   
<html>
    <head>
         <title> Δημιουργία προφίλ </title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="check.js"></script>
    </head>
    <body>    
        <h2 align="center"> Προφίλ εκπαιδευόμενου - Δημογραφικά δεδομένα </h2>
    
        <form method="POST" onsubmit="return checkAll()" NAME ="myform" action="profile_create.jsp" >
<table border="0" align="center" accept-charset="UTF-8">
<tr>
<td><p> Παρακαλώ εισάγετε τον κωδικό σας :</p></td><td>
<input type="text" name="j_ID" size="7" id="id1"/>
</td>
</tr>
<tr>
<td><p> Παρακαλώ εισάγετε το όνομά σας : </p></td><td>
<input type="text" name="j_name" size="30" id="id2"/>
</td>
</tr>
<tr>
<td><p> Παρακαλώ εισάγετε το επίθετό σας : </p></td><td>
<input type="text" name="j_lastname" size="30" id="id6"/>
</td>
</tr>
<tr>
<td><p> Παρακαλώ εισάγετε την ηλικία σας :</p> </td><td>
<input type="text" name="j_age" size="3" id="id3"/>
</td>
</tr>
<tr>
<td><p> Παρακαλώ επιλέξτε φύλο : </p><td>
<input type="radio" name="j_gender" value="male" /> Άντρας<br />
<input type="radio" name="j_gender" value="female" /> Γυναίκα
</tr>
<tr>
<td><p> Παρακαλώ επιλέξτε την οικογενειακή σας κατάσταση : </p></td><td>
<input type="radio" name="j_civil" value="married" /> Παντρεμένος/η <br />
<input type="radio" name="j_civil" value="single" />  Ανύπαντρος/η <br />
<input type="radio" name="j_civil" value="divorced"  /> Διαζευγμένος/η
</td>
</tr>
<tr>
<td><p> Παρακαλώ επιλέξτε το επίπεδο σπουδών σας : </p></td><td>
<input type="radio" name="j_edu" value="secondary" /> Δευτεροβάθμια εκπαίδευση <br />
<input type="radio" name="j_edu" value="bachelor" />  Τριτοβάθμια εκπαίδευση <br />
<input type="radio" name="j_edu" value="master" />  Μεταπτυχιακές σπουδές <br />
<input type="radio" name="j_edu" value="phd"  /> Διδακτορικό
</td>
</tr>
<tr>
<td><p> Διαθέτετε ηλεκτρονικό υπολογιστή ;</p></td><td>
<input type="radio" name="j_pc" value="pc_yes" /> Ναι <br />
<input type="radio" name="j_pc" value="pc_no" />  Όχι <br />
</td>
</tr>
<tr>
<td><p> Πόσο συχνά χρησιμοποιείτε υπολογιστή ;</p></td><td>
<input type="radio" name="j_pc_usage" value="usage_daily" /> Καθημερινά <br />
<input type="radio" name="j_pc_usage" value="usage_weekly" />  2-3 φορές τη βδομάδα <br />
<input type="radio" name="j_pc_usage" value="usage_monthly" />  2-3 φορές το μήνα <br />
<input type="radio" name="j_pc_usage" value="usage_never" />  Σχεδόν ποτέ <br />
</td>
</tr>
<tr>
<td><p> Ποιοί είναι οι βασικότεροι λόγοι που χρησιμοποιείτε υπολογιστή ;</p></td><td>
<input type="checkbox" name="j_pc_reasons" value="reasons_net"> Διαδίκτυο <br />
<input type="checkbox" name="j_pc_reasons" value="reasons_email">  Ηλεκτρονικό Ταχυδρομείο <br />
<input type="checkbox" name="j_pc_reasons" value="reasons_doc">  Επεξεργασία Κειμένων <br />
<input type="checkbox" name="j_pc_reasons" value="reasons_games">   Παιχνίδια <br />
<input type="checkbox" name="j_pc_reasons" value="reasons_prog">  Προγραμματισμός <br />
</td>
</tr>
<tr>
<td><p> Πόσο χρόνο διαθέτετε για τη μελέτη των ενοτήτων που παρακολουθείτε ;</p></td><td>
<input type="radio" name="j_time_study" value="much" /> Πολύ <br />
<input type="radio" name="j_time_study" value="few" />  Μέτριο <br />
<input type="radio" name="j_time_study" value="little" /> Λίγο <br />
</td>
</tr>
<tr>
<td><p> Ποια είναι η πρότερη γνώση σας πάνω στο αντικείμενο σπουδών σας ;</p></td><td>
<input type="radio" name="j_previous_knowledge" value="previous_none" /> Καμία <br />
<input type="radio" name="j_previous_knowledge" value="previous_job" />  Επαγγελματική εμπειρία <br />
<input type="radio" name="j_previous_knowledge" value="previous_iek" />  Σχετικό πτυχίο ΙΕΚ <br />
<input type="radio" name="j_previous_knowledge" value="previous_aei" />  Σχετικό πτυχίο ΑΕΙ <br />
<input type="radio" name="j_previous_knowledge" value="previous_personal" />  Προσωπική ενασχόληση <br />
</td>
</tr>
<tr>
<td><h2> Στοιχεία επικοινωνίας </h2> </td><td>
</td>
</tr>
<tr>
<td><p> Παρακαλώ εισάγετε τη διεύθυνσή σας :</p> </td><td>
<input type="text" name="j_address" size="30" id="id8"/>
</td>
</tr>
<tr>
<td><p> Παρακαλώ εισάγετε τον αριθμό του τηλεφώνου σας :</p> </td><td>
<input type="text" name="j_phone" size="10" id="id9"/>
</td>
</tr>
<tr>
<td><p> Παρακαλώ εισάγετε την ηλεκτρονική σας διεύθυνση :</p> </td><td>
<input type="text" name="j_email" size="20" id="id7"/>
</td>
</tr>
<tr>
<td><p> 
        <button type="submit"> Καταχώρηση </button></p> </td>
</tr>
</table>
</form>      
    </body>
</html>