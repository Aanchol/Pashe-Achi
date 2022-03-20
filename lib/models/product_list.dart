import 'package:pashe_achi/models/product.dart';

class ProductList{
  List<Product> productStoreList = [
    Product('Surgical Mask',
        "It is designed to prevent infections.",
        'assets/images/sergical_mask.png', 160),
    Product(
        'Black n95 Mask',
        "It is n95 mask designed to prevent infections in patients.",
        'assets/images/black_mask.png',
        250),
    Product('Jumper Pulse Oximeter',
        "It is for measuring oxygen pulse",
        'assets/images/Oximeter.png', 1500),
    Product('Molvir 200mg capsule',
        "Molnupiravir is an antiviral medicine used to treat mild to moderate C0VID-19 (caused by SARS-CoV-2) in adults who are at risk for developing severe illness",
        'assets/images/Molvir_Capsule.png', 500),
  ];

}

