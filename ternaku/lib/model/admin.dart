import 'user.dart';
import 'package:ternaku/model/buku.dart';
import 'package:ternaku/model/listbuku.dart';
import 'package:ternaku/helpers/book_manager.dart';
import 'package:ternaku/constants.dart';

class Admin extends User {
  String permission = 'admin';
  Admin(String email, String password, this.permission)
      : super(email, password);

  addBook(Buku book) {
    manager.readBooks();
    ListBuku library = manager.library;
    List<Buku> list_buku = library.getDummyBooks();
    list_buku.add(book);
    library.addNewList(list_buku);
    manager.writeBooks(library);
  }
}
