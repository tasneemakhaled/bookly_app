import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomrRepoImpl implements HomeRepo{
  ApiService apiService;
  HomrRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async{
   try {
  var data= await apiService.get(endPonit: '?filter=free-ebooks&q=Sport&Sorting=newest');
  List<BookModel>books=[];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}catch (e) {
 return left(ServerFailure());
}
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFaeturedBokks() {
    // TODO: implement fetchFaeturedBokks
    throw UnimplementedError();
  }


}