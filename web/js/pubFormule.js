/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var j=0;

function pubFormule() {
                //fichier Json contenant les images 
                var tab = {
                    "0": "formul_00",
                    "1": "formule_001",
                    "2": "formul_002"
                    
                };
                j = (j + 1) % 3;

                $('#im2').attr('src', 'img/portfolio/' + tab[j] + '.png');
            }
            setInterval(pubFormule,3000);



