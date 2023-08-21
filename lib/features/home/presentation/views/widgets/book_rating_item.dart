import 'package:booky/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 20,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            '4.5',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '(2390)',
            style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
          )
        ],
      ),
    );
  }
}
