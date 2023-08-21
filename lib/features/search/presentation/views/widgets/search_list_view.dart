import 'package:booky/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (context, index) => const BookListviewItem(),
      ),
    );
  }
}
