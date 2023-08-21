import 'package:booky/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Expanded(
            child: CustomButton(
              onPressed: (){},
          text: '19.99€',
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(11), bottomLeft: Radius.circular(11)),
          backColor: Colors.white,
          textColor: Colors.black,
        )),
        Expanded(
            child: CustomButton(
              onPressed: (){},
              fSize: 16,
          text: 'Free preview',
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(11), bottomRight: Radius.circular(11)),
          backColor: const Color(0xffEF8262),
          textColor: Colors.white,
        )),
      ],
    );
  }
}
