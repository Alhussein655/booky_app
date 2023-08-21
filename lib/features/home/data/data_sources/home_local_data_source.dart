import 'package:booky/constants.dart';
import 'package:booky/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}
class HomeLocalDataImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
 var box= Hive.box<BookEntity>(kFeaturedBox);
 return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box= Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}