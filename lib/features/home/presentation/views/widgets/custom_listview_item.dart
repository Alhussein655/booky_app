import 'package:booky/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key,required this.width});
  final  double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      Container(
        width: MediaQuery.of(context).size.width * width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsData.book1)),
        ),
      ),
    );
  }
}
