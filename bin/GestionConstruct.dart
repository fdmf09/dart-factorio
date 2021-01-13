import 'GestionStocks.dart';

class GestionConstruct {
  static int planche = 15;
  static int beton = 25;
  static int maison = 0;
  static int immeuble = 0;

  int creationPlanche(int quantite) {
    if (GestionStocks.bois >= quantite * 5) {
      planche = planche + quantite;
      GestionStocks.bois = GestionStocks.bois - (5 * quantite);
    } else if (quantite < 0 ||
        GestionStocks.bois < quantite * 5 ||
        GestionStocks.bois < 5) {
      print('! Quantitée de bois insufisante !\n');
    }
    return planche;
  }

  int creationBeton(int quantite) {
    if (GestionStocks.pierre >= quantite * 10) {
      beton = beton + quantite;
      GestionStocks.pierre = GestionStocks.pierre - (10 * quantite);
    } else if (quantite < 0 ||
        GestionStocks.pierre < quantite * 10 ||
        GestionStocks.pierre < 10) {
      print('! Quantitée de pierre insufisante !\n');
    }
    return beton;
  }

  int creationMaison(int quantite) {
    if (planche >= quantite * 15 && beton >= quantite * 25) {
      maison = maison + quantite;
      planche = planche - (15 * quantite);
      beton = beton - (25 * quantite);
    } else if (quantite <= 0 ||
        planche < quantite * 15 && beton < quantite * 25) {
      print('! Quantitées insufisantes !\n');
    }
    return maison;
  }
}
