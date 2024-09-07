class Product{
  late int id;
  late double price;
  late String name,image,brand,description;
  late List<String> thumbnails;
  Product({required this.id,required this.price,required this.name,required this.image,required this.thumbnails });
  Product.fromMap(Map<String,dynamic>row){
    id=row["id"];
    price=row["price"];
    name=row["name"];
    image=row["image"];
    thumbnails=row["thumbnails"];
    brand=row["brand"];
    description=row["description"];

  }
}