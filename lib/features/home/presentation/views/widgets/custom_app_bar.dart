import 'package:booky/core/utils/app_router.dart';
import 'package:booky/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30,bottom: 10,left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,height: 20,),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchViewPath);
              },
              icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass
              ))
        ],
      ),
    );
  }
}
