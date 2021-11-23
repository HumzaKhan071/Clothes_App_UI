import 'package:clothes_app_starter/models/clothes.dart';
import 'package:clothes_app_starter/screens/Home/widgets/categories_list.dart';
import 'package:clothes_app_starter/screens/Home/widgets/clothes_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  final clotheslist = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList(title: "New Arrival"),
          Container(
            height: 280,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ClothesItem(clothes: clotheslist[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: clotheslist.length),
          )
        ],
      ),
    );
  }
}
