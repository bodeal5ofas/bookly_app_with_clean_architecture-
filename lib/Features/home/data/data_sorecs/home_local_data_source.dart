import 'package:bookly_app/Core/utils/constant.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntitiy> fetchFetaredBooks();
  List<BookEntitiy> fetchNewsBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntitiy> fetchFetaredBooks() {
    var box = Hive.box<BookEntitiy>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntitiy> fetchNewsBooks() {
    var box = Hive.box<BookEntitiy>(kNewsBox);

    return box.values.toList();
  }
}
