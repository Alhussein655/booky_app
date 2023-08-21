import 'package:booky/core/utils/style.dart';
import 'package:booky/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booky/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booky/features/home/presentation/views/widgets/featured_books_listview_bloc_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListViewBlocBuilder(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
    // return const
    // ;
  }
}

