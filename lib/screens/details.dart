import 'package:flutter/material.dart';
import 'package:new_flutter_project/models/product_model.dart';
import 'package:new_flutter_project/widgets/detail_desc.dart';
import 'package:new_flutter_project/widgets/detail_price.dart';

import '../widgets/detail_back_button.dart';
import '../widgets/detail_data.dart';
import '../widgets/detail_image.dart';
import '../widgets/detail_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.img),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailDescription(description: arguments.desc),
            DetailPrice(price: arguments.price),
            DetailData(id: arguments.id),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}