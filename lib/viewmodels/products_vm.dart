import 'package:shop_app1/data/products_db.dart';
import 'package:shop_app1/models/product.dart';

class ProductsVM {
  List<Product> loadAllProducts() {
    ProductsDb db = ProductsDb();
    return db.select().map((e) => Product.fromMap(e)).toList();
  }
}
