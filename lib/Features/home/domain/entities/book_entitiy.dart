import 'package:hive/hive.dart';

part 'book_entitiy.g.dart';
@HiveType(typeId: 0)
class BookEntitiy {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? author;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;

  BookEntitiy(
      {required this.bookId,
      required this.image,
      required this.title,
      required this.author,
      required this.price,
      required this.rating});
}
