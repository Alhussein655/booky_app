import 'package:booky/constants.dart';
import 'package:booky/core/utils/app_router.dart';
import 'package:booky/core/utils/assets_data.dart';
import 'package:booky/core/utils/style.dart';
import 'package:booky/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListviewItem extends StatelessWidget {
  const BookListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsViewPath),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .18,
              width: MediaQuery.of(context).size.width * .22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AssetsData.book)),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFineFamily),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const BookRatingItem(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

