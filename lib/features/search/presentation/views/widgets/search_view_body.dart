import 'package:booky/core/utils/style.dart';
import 'package:booky/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booky/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
              ),
              const CustomSearchTextField(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 20),
                    child: Text(
                      'Search Result',
                      style: Styles.textStyle18,
                    ),
                  ),

                ]),
          ),
        ),
        const SliverFillRemaining(
          child: SearchListView(),
        )
      ],
    );
  }
}
