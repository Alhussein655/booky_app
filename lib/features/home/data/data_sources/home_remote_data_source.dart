import 'package:booky/constants.dart';
import 'package:booky/core/utils/api_service.dart';
import 'package:booky/core/utils/functions/save_books.dart';
import 'package:booky/features/home/data/models/BookModel.dart';
import 'package:booky/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataImpl extends HomeRemoteDataSource {
  ApiService apiService;

  HomeRemoteDataImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.getBooks(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);

    saveBooksData(books, kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.getBooks(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=programming');
    List<BookEntity> books = getBooksList(data);

    saveBooksData(books, kNewestBox);

    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromMap(bookMap));
    }
    return books;
  }

}
