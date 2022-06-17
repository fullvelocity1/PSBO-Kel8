import 'package:ternaku/model/user.dart';
import 'package:ternaku/model/listuser.dart';
import 'package:ternaku/model/admin.dart';

class LoginAuth {
  ListUser userDatabase = ListUser();
  List<User> list_user = [];
  User input_user = User('', '');

  LoginAuth(this.input_user);

  void debug() {
    print(input_user.getEmail());
    print(input_user.getPassword());
  }

  String credSearch(String em, String pw) {
    int iter = list_user.length;
    for (var i = 0; i < iter; i++) {
      User check_user = list_user[i];
      if (check_user.getEmail() == em) {
        if (check_user.getPassword() == pw) {
          if (check_user.getEmail() == "admin") {
            return "Admin Found";
          }
          return "Found";
        }
      }
    }
    return "Not Found";
  }

  String userAuth() {
    list_user = userDatabase.getUserList();
    String check_email = input_user.getEmail();
    String check_password = input_user.getPassword();
    String search_response = credSearch(check_email, check_password);
    if (search_response == "Found") {
      return "Login Successful";
    } else if (search_response == "Admin Found") {
      return "Admin Login Successful";
    } else if (search_response == "Not Found") {
      return "Invalid Credentials";
    } else {
      return "Login Error";
    }
  }
}
