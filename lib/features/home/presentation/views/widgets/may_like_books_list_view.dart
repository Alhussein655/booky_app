import 'package:booky/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';

class MayLikeListView extends StatelessWidget {
  const MayLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0,left: 15,right: 15,bottom: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*.22,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomListViewItem(
            width: .3,
          ),
        ),
      ),
    );
  }
}
