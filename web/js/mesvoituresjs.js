/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*Formule pour la selection des voitures et modeles du formulaire*/

function mesVoitures() {
    var xhttp = new XMLHttpRequest();
    //alert("1");
    xhttp.onreadystatechange = function () {
        //alert("2>> "  + this.responseText);
        if (this.readyState == 4 && this.status == 200) {
//document.getElementById("typeDeVoiture").innerHTML = this.responseText;
            var sep = this.responseText.trim().slice(1, -1);
            var tab = sep.split(",");

            //l'alert nous retourne la marque choisie !!! 
            
            var varmarq = document.getElementById("marques").value;
            document.getElementById("marquesModels").length = 0;
            
            
            if(varmarq!== "0"){
                 document.getElementById("divmodeles").hidden = false;
            for (elt in tab){   
                 
                //l'alert nous retourne les models dispo selon la marque!!!!!                                   
                document.getElementById("marquesModels").options[elt] = new Option(tab[elt], tab[elt]);
            }
            }else{
                document.getElementById("divmodeles").hidden = true;
            }        
           
        }
    };
    var marque = document.getElementById("marques").value;
    xhttp.open("GET", "marqueVoituresServlet?marqueChoisie=" + marque, true);
                    xhttp.send();
}


//function mesVoitures() {
//                var xhttp = new XMLHttpRequest();
//                xhttp.onreadystatechange = function () {
//                    if (this.readyState == 4 && this.status == 200) {
//
//                      // alert(this.responseText);
//                        var sep = this.responseText.trim().slice(1,-1);
//                        //alert(sep);
//                        var tab = sep.split(",");
////            alert("3>> " +
//                        document.getElementById("marques").value;
//
//                        document.getElementById("marquesModels").length = 0;
//                        for (elt in tab) {
//                            //alert(">>" + elt);
//                            document.getElementById("marquesModels").options[elt] =
//                                    new Option(tab[elt],tab[elt]);
//                            
//                        }
//                    }
//                };
//                var marque = document.getElementById("marques").value;
//                xhttp.open("GET", "marqueVoituresServlet?marqueChoisie=" + marque, true);
//                xhttp.send();
//            }
