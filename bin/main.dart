import 'dart:io';
import 'GestionJeu.dart';
import 'GestionStocks.dart';

/*
R1 ---> Usine1  \
R2 ---> Usine2  -\--> Usine3  ---> City

foret --> bois --> planche
mine de pierre --> pierre  --> beton

planche + beton  --> maison

maison + maison --> immeuble --> argent;

*/

int main(List<String> args) {
  var stock = GestionStocks();
  var jeu = GestionJeu();
  var flag = true;

  while (flag == true) {
    var choix = jeu.mainMenu();
    switch (choix) {
      case 1:
        stock.getStocks();
        break;

      case 2:
        var materiel = jeu.collecteMenu();
        switch (materiel) {
          case 1:
            stock.ramasserBois();
            break;

          case 2:
            stock.ramasserPierre();
            break;

          case 99:
            flag = false;
            break;

          default:
        }
        flag = true;
        break;

      case 99:
        flag = false;
        break;

      default:
        flag = false;
    }
  }

  return 0;
}
