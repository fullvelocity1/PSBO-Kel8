class User {
  String email = '';
  String password = '';

  User(this.email, this.password);

  String getEmail() {
    return email;
  }

  void setEmail(String args) {
    if (args.isNotEmpty) email = args;
  }

  String getPassword() {
    return password;
  }

  void setPassword(String args) {
    if (args.isNotEmpty) password = args;
  }
}
