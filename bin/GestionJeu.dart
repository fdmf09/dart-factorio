import 'dart:io';

class GestionJeu {
  int selection() {
    // Read the choice for the action
    var choix = int.parse(stdin.readLineSync());
    return choix;
  }

  int mainMenu() {
    print('');
    print('Que voulez vous faire ?');
    print(' _____________________________');
    print('|  1  | Reserves de matériaux |');
    print('|  2  | Collecte de matériaux |');
    print('|  3  | Menu de construction  |');
    print('|  4  | Menu des recettes     |');
    print('|  99 | Quitter le jeu        |');
    print(' ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾');
    print('');
    return selection();
  }

  int collecteMenu() {
    print('');
    print('Que voulez vous ramasser ?');
    print('_______________');
    print('| 1  | Bois    |');
    print('| 2  | Pierre  |');
    print('| 99 | Retour  |');
    print('‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾');
    print('');
    return selection();
  }

  int constructionMenu() {
    print('');
    print('Que voulez vous construire ?');
    print('_______________');
    print('| 1  | Planche  |');
    print('| 2  | Beton    |');
    print('| 3  | Maison   |');
    print('| 4  | Immeuble |');
    print('| 99 | Retour   |');
    print('‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾');
    print('');
    return selection();
  }

  void recettesMenu() {
    print('');
    print('Aide pour les recettes:');
    print('-----------------------------------------------');
    print('5 bois = 1 planche');
    print('10 pierre = 1 beton');
    print('15 planches + 25 beton = 1 maison');
    print('35 planches + 50 beton = 1 immeuble (2 étages)');
    print('65 planches + 75 beton = 1 immeuble (3 étages)');
    print('85 planches + 100 beton = 1 immeuble (4 étages)');
    print('50 argent = 10 planches');
    print('100 argent = 5 betons');
    print('1 maison = 10 argent / tour');
    print('1 immeuble (2 étages) = 25 argent / tour');
    print('1 immeuble (3 étages) = 50 argent / tour');
    print('1 immeuble (4 étages) = 100 argent / tour');
    print('-----------------------------------------------');
    print('');
  }
}
