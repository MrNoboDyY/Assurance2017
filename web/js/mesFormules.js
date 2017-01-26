/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function mesFormules (){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange=function (){
        alert("1");
        if (this.readyState==4 && this.status==200){
            var sansaccol = this.responseText.trim().slice(1,-1);
            var tabsansvirgule = sansaccol.split(",");
           
            alert("2");
            var ifrm = document.getElementById("formules").value;
            document.getElementById("montant");
            
            if (ifrm!=0){
                document.getElementById("montant").hidden=false;
                for (elt in tabsansvirgule) {
                    document.getElementById("montant").options[item]= new Option(tabsansvirgule[elt],tabsansvirgule[elt]);
                    
                }
            }else{
                document.getElementById("montant").hidden=true;
            }
        }
    };
    
    var formule = document.getElementById("formules").value;
    xhttp.open("GET","mesFormulesServlet?formuleChoisie", + formule,true);
    xhttp.send();
    
    
}