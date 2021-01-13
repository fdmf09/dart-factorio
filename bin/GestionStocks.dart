import 'GestionConstruct.dart';

class GestionStocks {
  static int argent = 0;
  static int bois = 0;
  static int pierre = 0;

  void getStocks() {
    print('Argent disponible: $argent');
    print('Bois disponible: $bois');
    print('Pierre disponible: $pierre');
    print('Planches disponibles: ${GestionConstruct.planche}');
    print('Beton disponible: ${GestionConstruct.beton}');
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
