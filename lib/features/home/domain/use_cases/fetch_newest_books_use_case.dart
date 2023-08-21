import 'package:booky/core/errors/failure.dart';
import 'package:booky/core/use_cases/use_case.dart';
import 'package:booky/features/home/domain/entities/book_entity.dart';
import 'package:booky/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}


