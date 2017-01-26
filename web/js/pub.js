/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//var Uri = "ws://" + document.location.host + document.location.pathname + "pub";
//var websocket = new Websocket(Uri);

var i = 0;//var globale 


function pub() {
    //fichier Json contenant les images 
    var tab = {
        "0": "A.01",
        "1": "A.02",
        "2": "A.03",
        "3": "A.04"
    };
    i = (i + 1) % 4;

//jQuery pour attribuer les images du portfolio a id im1 //
    $('#im1').attr('src', 'img/portfolio/' + tab[i] + '.png');
}
//interval de passage des images
setInterval(pub, 3000);


