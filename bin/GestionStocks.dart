import 'GestionConstruct.dart';

class GestionStocks {
  static int argent = 0;
  static int bois = 0;
  static int pierre = 0;

  void getStocks() {
    print('---------Ressources---------');
    print('Argent: $argent');
    print('Bois: $bois');
    print('Pierre: $pierre');
    print('Planches: ${GestionConstruct.planche}');
    print('Beton: ${GestionConstruct.beton}');
    print('---------Batiments---------');
    print('Maisons: ${GestionConstruct.maison}');
    print('Immeubles: ${GestionConstruct.immeuble}');
    print('---------------------------\n');
  }

  int ramasserBois() {
    bois = bois + 5;
    return bois;
  }

  int ramasserPierre() {
    pierre = pierre + 5;
    return pierre;
  }
}
