import 'package:booky/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booky/features/home/presentation/views/widgets/books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBlocBuilder extends StatelessWidget {
  const FeaturedBooksListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
    if(state is FeaturedBooksSuccess){
      return const BooksListView();

    }else if(state is FeaturedBooksFailure){
      return Text(state.errorMsg);
    }else{
      return const CircularProgressIndicator();
    }
      },
    );
  }
}
