class GestionStocks {
  static int moula = 500;
  static int bois = 0;
  static int pierre = 0;

  void getStocks() {
    print('Argent disponible: $moula');
    print('Bois disponible: $bois');
    print('Pierre disponible: $pierre');
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
