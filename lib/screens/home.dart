import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../widgets/product_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 List<Product> products = [
    Product(id: 1, name: "T-Shirt",  img: 'https://cdn.pixabay.com/photo/2024/05/09/13/35/ai-generated-8751040_1280.png', desc: "Oversize green T-Shirt", price: 1200.0,),
    Product(id: 2, name: "T-Shirt",  img: 'https://cdn.pixabay.com/photo/2024/02/06/18/10/ai-generated-8557635_1280.jpg', desc: "Unisex white T-Shirt", price: 1490.0,),
    Product(id: 3, name: "T-Shirt",  img: 'https://cdn.pixabay.com/photo/2024/01/20/01/54/ai-generated-8520240_1280.jpg', desc: "Unisex black T-shirt", price: 990.0,),
    Product(id: 4, name: "Dress",  img: 'https://cdn.pixabay.com/photo/2024/01/06/15/26/ai-generated-8491587_1280.jpg', desc: "White dress with thin straps", price: 1290.0,),
    Product(id: 5, name: "Pajamas",  img: 'https://cdn.pixabay.com/photo/2023/07/10/15/56/ai-generated-8118606_960_720.png', desc: "Silk pink pajama set", price: 1500.0,),
    Product(id: 6, name: "Coat",  img: 'https://cdn.pixabay.com/photo/2024/02/24/13/41/ai-generated-8594039_1280.jpg', desc: "Orange long coat for winter", price: 2750.0,),
    Product(id: 7, name: "Cowboy hat",  img: 'https://cdn.pixabay.com/photo/2023/09/04/14/52/ai-generated-8232911_1280.jpg', desc: "White cowboy hat for woman", price: 960.0,),
    Product(id: 8, name: "Sunglasses",  img: 'https://cdn.pixabay.com/photo/2023/12/22/21/15/fantasy-8464394_1280.jpg', desc: "Sunglasses with multiple colors", price: 1660.0,),
    Product(id: 9, name: "Dress",  img: 'https://cdn.pixabay.com/photo/2024/07/28/15/19/ai-generated-8927774_1280.jpg', desc: "Summer dress with florals", price: 1990.0,),
    Product(id: 10, name: "Wedding Dress",  img: 'https://cdn.pixabay.com/photo/2024/10/07/04/27/ai-generated-9101621_1280.jpg', desc: "White wedding dress with a lace back", price: 5000.0,)
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green.shade700,
          leading: IconButton(onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
          title: const Text("213013", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {},
                icon: const Icon(Icons.settings, color: Colors.white, size: 24))
          ],
        ),
      body: ProductGrid(product: products),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}