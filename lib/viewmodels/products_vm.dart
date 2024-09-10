import 'package:shop_app1/data/products_db.dart';
import 'package:shop_app1/models/product.dart';

class ProductsVM {
    static List<Map<Product, int>> cartItems = [];
  static addToCart({required Product p, int qty = 1}) {
    Map<Product, int> item = Map();
    item[p] = qty;
    cartItems.add(item);
  }
  List<Product> loadAllProducts() {
    ProductsDb db = ProductsDb();
    return db.select().map((e) => Product.fromMap(e)).toList();
  }
}
