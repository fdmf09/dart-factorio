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

int main() {
  var stock = GestionStocks();
  var jeu = GestionJeu();
  var creation = GestionConstruct();
  var findetour = false;
  var findepartie = false;
  var nbTours = 0;

  while (findepartie == false) {
    while (findetour == false) {
      nbTours = nbTours + 1;
      print('\nTour: $nbTours');
      GestionStocks.argent =
          GestionStocks.argent + 10 * GestionConstruct.maison;
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
              jeu.mainMenu();
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
              print('Combien de beton voulez vous fabriquer ?');
              creation.creationBeton(jeu.selection());
              break;
            case 3:
              print('Combien de maisons voulez vous construire ?');
              creation.creationMaison(jeu.selection());
              break;
            default:
          }
          break;

        case 4:
          jeu.recettesMenu();
          break;

        case 99:
          findetour = true;
          findepartie = true;
          break;

        default:
          findetour = true;
          findepartie = true;
      }
    }
    stock.getStocks();
  }
  return 0;
}
