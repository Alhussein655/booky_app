import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: TextField(
          decoration: InputDecoration(

              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.white),
              suffixIcon: Opacity(
                opacity: .5,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
              ),
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder()
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.white));
  }
}
