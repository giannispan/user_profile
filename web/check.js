/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function checkBoxes (frmName, rbGroupName,hlpMsg) {
 var radios = document[frmName].elements[rbGroupName];
 for (var i=0; i <radios.length; i++) {
  if (radios[i].checked) {
   
   return true;
  }
 }
 alert(hlpMsg);
 return false;
}      

function checkAll() {
  var demo1 = document.getElementById('id1');
  var demo2 = document.getElementById('id2');
  var demo3 = document.getElementById('id3');
  var demo4 = document.getElementById('id6');
  var demo5 = document.getElementById('id7');
  var demo6 = document.getElementById('id8');
  var demo7 = document.getElementById('id9');

    
    if(check(demo1, "Παρακαλώ εισάγετε το ID σας")){
    if(check(demo2, "Παρακαλώ εισάγετε το όνομά σας")){  
    if(check(demo3, "Παρακαλώ εισάγετε την ηλικία σας")){
    if(check(demo4, "Παρακαλώ εισάγετε το επίθετό σας")){
    if(check(demo5, "Παρακαλώ εισάγετε το email σας")){
    if(check(demo6, "Παρακαλώ εισάγετε τη διεύθυνσή σας")){
    if(check(demo7, "Παρακαλώ εισάγετε το τηλέφωνό σας")){    
    if(checkBoxes("myform","j_gender","Παρακαλώ εισάγετε το φύλο σας")){
    if(checkBoxes("myform","j_civil","Παρακαλώ επιλέξτε την οικογενειακή σας κατάσταση")){
    if(checkBoxes("myform","j_edu","Παρακαλώ επιλέξτε το επίπεδο σπουδών σας")){
    if(checkBoxes("myform","j_pc","Παρακαλώ επιλέξτε αν διαθέτετε υπολογιστή ή όχι")){
    if(checkBoxes("myform","j_pc_usage","Παρακαλώ επιλέξτε τη χρήση υπολογιστή που κάνετε")){
    if(checkBoxes("myform","j_pc_reasons","Παρακαλώ επιλέξτε τους λόγους για τη χρήση υπολογιστή που κάνετε")){
    if(checkBoxes("myform","j_time_study","Παρακαλώ επιλέξτε πόσο χρόνο διαθέτετε για μελέτη")){
    if(checkBoxes("myform","j_previous_knowledge","Παρακαλώ επιλέξτε πoιά είναι η πρότερή σας γνώση στο αντικείμενο που διδάσκεστε")){
        return true;
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    return false;
}

function check(elem, helperMsg){
	if(elem.value.length == 0){
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
        return true;
}

