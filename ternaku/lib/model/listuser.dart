import 'package:ternaku/model/user.dart';

class ListUser {
  List<User> list_user = [];

  ListUser() {
    list_user = [
      User("herdika@herdika.com", "silus"),
      User("alwaganteng@alwa.com", "alwakeren"),
      User("quinthequeen@quin.com", "quinkeren"),
      User("nadnadnadzla@nadira.com", "nadirakeren"),
      User("adriadjah@adri.com", "adrikeren")
    ];
  }

  List<User> getUserList() {
    return list_user;
  }
}
