/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 function monUtilisation(){
     var xhttp = new XMLHttpRequest();
     //alert("1");
     
     xhttp.onreadystatechange = function (){
         //alert("2>> "  + this.responseText);
         if (this.readyState == 4 && this.status == 200){
            
            //alert("3>> ");
             var cp = this.responseText.trim().slice(1,-1);
             var tabb = cp.split(",");
             
             
             var vutil = document.getElementById("utilisations").value;
             document.getElementById("kilometrages").length = 0;
             
             
             if (vutil!== "0"){
                 document.getElementById("divkilometrage").hidden = false;
                 for (elt in tabb){
                     //alert("4"+ elt);
                     document.getElementById("kilometrages").options[elt]= new Option(tabb[elt], tabb[elt]);
                 }
             }else{
                 document.getElementById("divkilometrage").hidden = true;
             }
         }
     };
     var utilisation = document.getElementById("utilisations").value;
     xhttp.open("GET","utilisationKilometrageServlet?utilisationChoisie=" + utilisation, true);
                                        xhttp.send();
 }

