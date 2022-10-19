class Brew {
  final String? name;
  final String? sugars;
  final int? strength;

  Brew({this.name, this.sugars, this.strength});
}

class FridgeInventory {
  final String product;
  final String? belongsTo;
  final DateTime dateOfPlacement;
  final DateTime? updatedAt;
  final DateTime dateOfExpiry;

  FridgeInventory(
      {required this.product,
      this.belongsTo,
      required this.dateOfPlacement,
      this.updatedAt,
      required this.dateOfExpiry});
}
