import 'package:bookly_app/Core/utils/constant.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntitiy> fetchFetaredBooks({int pageNumber = 0});
  List<BookEntitiy> fetchNewsBooks({int pageNum = 0});
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntitiy> fetchFetaredBooks({int pageNumber = 0}) {
    var box = Hive.box<BookEntitiy>(kFeaturedBox);
    int length = box.values.length;
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntitiy> fetchNewsBooks({int pageNum = 0}) {
    var box = Hive.box<BookEntitiy>(kNewsBox);
    int length = box.values.length;
    int startIndex = pageNum * 10;
    int endIndex = (pageNum + 1) * 10;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }
}
