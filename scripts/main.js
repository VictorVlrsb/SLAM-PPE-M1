
function alerte(){
  alert('Veuillez entrer vos coordonnées de carte bleue !');
}

//Pour changer une image :
//<button onclick="document.getElementById('image').src='Images/Accueil.jpg'">Turn on the light</button>
//<img id="image" src="Images/Accueil.jpg" style="width:1000px">
//<button onclick="document.getElementById('image').src='Images/maison1.jpg'">Turn off the light</button>


var Tabimg = ["Images/maison1.jpg","Images/maison1salon.jpg","Images/maison1chambre.jpg"];
var i=0;

function ImagePrecedente(){
  i--;
   if (i<0){
    i=2;
   }
  var vImage=document.getElementById('image');
  vImage.setAttribute("src",Tabimg[i]);
}
function ImageSuivante(){
  i++;
   if (i>2){
    i=0;
   }
  var vImage=document.getElementById('image');
  vImage.setAttribute("src",Tabimg[i]);
}
