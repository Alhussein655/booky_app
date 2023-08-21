import 'package:bloc/bloc.dart';
import 'package:booky/features/home/domain/entities/book_entity.dart';
import 'package:booky/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:booky/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:flutter/material.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await fetchFeaturedBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.msg));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
