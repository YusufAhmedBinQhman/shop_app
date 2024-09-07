class ProductsDb{

  List<Map<String, dynamic>> products = [
    {
      'id': 1,
      'name': 'Essence Mascara Lash Princess',
      'description': 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.',
      'price': 9.99,
      'brand': 'Essence',
      'image': 'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png',
      'thumbnails': [
        'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png'
      ]
    },
    {
      'id': 2,
      'name': 'Eyeshadow Palette with Mirror',
      'description': 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.',
      'price': 19.99,
      'brand': 'Glamour Beauty',
      'image': 'https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/thumbnail.png',
      'thumbnails': [
        'https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png'
      ]
    },
    {
      'id': 3,
      'name': 'Powder Canister',
      'description': 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.',
      'price': 14.99,
      'brand': 'Velvet Touch',
      'image': 'https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/thumbnail.png',
      'thumbnails': [
        'https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/1.png'
      ]
    },
    {
      'id': 4,
      'name': 'Red Lipstick',
      'description': 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.',
      'price': 12.99,
      'brand': 'Chic Cosmetics',
      'image': 'https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/thumbnail.png',
      'thumbnails': [
        'https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/1.png'
      ]
    },
    {
      'id': 5,
      'name': 'Red Nail Polish',
      'description': 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.',
      'price': 8.99,
      'brand': 'Nail Couture',
      'image': 'https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/thumbnail.png',
      'thumbnails': [
        'https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/1.png'
      ]
    },
    {
      'id': 6,
      'name': 'Calvin Klein CK One',
      'description': 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.',
      'price': 49.99,
      'brand': 'Calvin Klein',
      'image': 'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/thumbnail.png',
      'thumbnails': [
        'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/1.png',
        'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/2.png',
        'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/3.png'
      ]
    },
    {
      'id': 7,
      'name': 'Chanel Coco Noir Eau De',
      'description': 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.',
      'price': 129.99,
      'brand': 'Chanel',
      'image': 'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/thumbnail.png',
      'thumbnails': [
        'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/1.png',
        'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/2.png',
        'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/3.png'
      ]
    },
    {
      'id': 8,
      'name': 'Dior J\'adore',
      'description': 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.',
      'price': 89.99,
      'brand': 'Dior',
      'image': 'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/thumbnail.png',
    'thumbnails': [
      'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/1.png',
      'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/2.png',
      'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/3.png',
      'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/3.png',
      'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/3.png',
      'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J\'adore/3.png'
    ]
    }
  ];





  List<Map<String,dynamic>>select(){
  return products;

}
}