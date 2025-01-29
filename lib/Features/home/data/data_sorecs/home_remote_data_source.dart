import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Core/utils/constant.dart';
import 'package:bookly_app/Core/utils/functions/save_book_data.dart';
import 'package:bookly_app/Features/home/data/models/books_model/book_model.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
//import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntitiy>> fetchFeaturedBooks({int pageNum=0});
  Future<List<BookEntitiy>> fetchNewsBooks({int pageNum=0});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntitiy>> fetchFeaturedBooks({int pageNum=0}) async {
    var jsonData = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNum * 10}');
    List<BookEntitiy> books = getParsingBooks(jsonData);
    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntitiy>> fetchNewsBooks({int pageNum=0}) async {
    var jsonData = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming&startIndex=${pageNum * 10}');
    List<BookEntitiy> books = getParsingBooks(jsonData);
    saveBooksData(books, kNewsBox);
    return books;
  }

  List<BookEntitiy> getParsingBooks(Map<String, dynamic> jsonData) {
    List<BookEntitiy> books = [];
    for (var bookMap in jsonData["items"]) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
