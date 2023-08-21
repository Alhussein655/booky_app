import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookAppBar extends StatelessWidget {
  const CustomBookAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 25,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}
