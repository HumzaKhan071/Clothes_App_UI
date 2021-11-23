import 'package:clothes_app_starter/models/clothes.dart';
import 'package:clothes_app_starter/screens/Details/widgets/add_cart.dart';
import 'package:clothes_app_starter/screens/Details/widgets/clothes_info.dart';
import 'package:clothes_app_starter/screens/Details/widgets/detail_appbar.dart';
import 'package:clothes_app_starter/screens/Details/widgets/size_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;

  const DetailPage({Key? key, required this.clothes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(
              clothes: clothes,
            ),
            ClothesInfo(
              clothes: clothes,
            ),
            SizeList(),
            AddCart(clothes:clothes)
          ],
        ),
      ),
    );
  }
}
