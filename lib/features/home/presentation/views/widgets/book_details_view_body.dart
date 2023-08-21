import 'package:booky/core/utils/assets_data.dart';
import 'package:booky/core/utils/style.dart';
import 'package:booky/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:booky/features/home/presentation/views/widgets/books_action.dart';
import 'package:booky/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:booky/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:booky/features/home/presentation/views/widgets/may_like_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
      child: Column(
        children: [
          const CustomBookAppBar(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * .32,
              width: MediaQuery.of(context).size.width * .43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AssetsData.book)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  color: const Color(0xff707070), fontStyle: FontStyle.italic),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: BookRatingItem(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
            child: BooksAction(),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0),
            child:  Align(
              alignment: Alignment.topLeft,
              child:  Text(
                'You can also like',
                style: Styles.textStyle16,
              ),
            ),
          ),
          const MayLikeListView()
        ],
      ),)]
    );
  }
}


