import 'package:flutter/material.dart';
import 'package:ternaku/constants.dart';
import 'package:ternaku/pages/components/rounded_button.dart';
import 'package:ternaku/helpers/loginAuth.dart';
import 'package:ternaku/model/user.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String email_value = '';
    String password_value = '';
    return Scaffold(
        body: Container(
      height: size.height,
      width: double.infinity,
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/bookagraphy.png"),
          Container(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              //color: kPrimaryColor,
              height: size.height * 0.4,
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Masuk Akun",
                          style: TextStyle(),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: size.width * 0.8,
                          height: size.height * 0.08,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF8F4F0),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            onChanged: (value) {
                              email_value = value;
                            },
                            decoration: InputDecoration(
                                hintText: "Email",
                                border: InputBorder.none,
                                fillColor: TextFieldColor),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: size.width * 0.8,
                            height: size.height * 0.08,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                color: Color(0xFFF8F4F0),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              onChanged: (value) {
                                password_value = value;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                              ),
                            )),
                        RoundedButton(
                          text: "Masuk",
                          press: () {
                            User login_user = User(email_value, password_value);
                            LoginAuth authenticator = LoginAuth(login_user);
                            String response = authenticator.userAuth();
                            if (response == "Login Successful") {
                              Navigator.of(context).pushNamed('/home');
                            } else {
                              SnackBar snackBar = SnackBar(
                                content: Text(email_value + password_value),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                            email_value = response;
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    )

        //body: Body(),
        );
  }
}
