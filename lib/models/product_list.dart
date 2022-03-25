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
    Product('Ace XR Tablet',
        "Fever, headache, toothache, earache, bodyache, myalgia, dysmenorrhoea, neuralgia and sprains. Colic pain, back pain, chronic pain of cancer, inflammatory pain, and post-vaccination pain and fever of children. Rheumatism and osteoarthritic pain & stiffness of joints in fingers, hips, knees, wrists, elbows, feet, ankles and top & bottom of the spine.",
        'assets/images/Ace_XR_Tablet.png', 250),
    Product('Acetram',
        "Management of moderate to moderately sever pain in adults & also indicated for the short-term (five days or less) management of acute.",
        'assets/images/ACETRAM.png', 250),
    Product('Sepnil Hand Sanitizer',
        "It is liquid sanitizer for cleaning hands.",
        'assets/images/hand_sanitizer.png', 120),
  ];

}

