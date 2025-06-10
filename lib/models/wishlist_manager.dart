class WishlistManager {
  static final WishlistManager _instance = WishlistManager._internal();
  factory WishlistManager() => _instance;

  WishlistManager._internal();

  final List<Map<String, dynamic>> _wishlist = [];

  List<Map<String, dynamic>> get wishlist => _wishlist;

  bool isInWishlist(String name) {
    return _wishlist.any((item) => item['name'] == name);
  }

  void toggleWishlist(Map<String, dynamic> recipe) {
    final exists = isInWishlist(recipe['name']);
    if (exists) {
      _wishlist.removeWhere((item) => item['name'] == recipe['name']);
    } else {
      _wishlist.add(recipe);
    }
  }
}
