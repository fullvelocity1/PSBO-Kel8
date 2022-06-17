import 'package:ternaku/model/user.dart';
import 'package:ternaku/model/admin.dart';

class ListUser {
  List<User> list_user = [];

  ListUser() {
    list_user = [
      User("herdika@herdika.com", "silus"),
      User("alwaganteng@alwa.com", "alwakeren"),
      User("quinthequeen@quin.com", "quinkeren"),
      User("nadnadnadzla@nadira.com", "nadirakeren"),
      User("adriadjah@adri.com", "adrikeren"),
      Admin("admin", "admin", "admin")
    ];
  }

  List<User> getUserList() {
    return list_user;
  }
}
