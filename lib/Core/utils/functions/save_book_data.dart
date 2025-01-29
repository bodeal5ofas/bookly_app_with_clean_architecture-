import 'dart:developer';

import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntitiy> books, boxName) {
  var box = Hive.box<BookEntitiy>(boxName);
 
  box.addAll(books);
   
}
