import 'dart:io';
import 'GestionJeu.dart';
import 'GestionStocks.dart';
import 'GestionConstruct.dart';

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
  var creation = GestionConstruct();
  var findetour = false;

  while (findetour == false) {
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

          default:
        }
        break;

      case 3:
        var construct = jeu.constructionMenu();
        switch (construct) {
          case 1:
            print('Combien de planches voulez vous fabriquer ?');
            creation.creationPlanche(jeu.selection());
            break;
          case 2:
            print('Combien de pierres voulez vous fabriquer ?');
            creation.creationBeton(jeu.selection());
            break;
          default:
        }
        break;

      case 4:
        jeu.recettesMenu();
        break;

      case 99:
        findetour = true;
        break;

      default:
        findetour = true;
    }
  }

  return 0;
}
