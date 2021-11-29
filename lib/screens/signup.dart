import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sentimental_analyst/components/already_have_an_account_acheck.dart';
import 'package:sentimental_analyst/components/rounded_button.dart';
import 'package:sentimental_analyst/components/rounded_input_field.dart';
import 'package:sentimental_analyst/components/rounded_password_field.dart';
import 'package:sentimental_analyst/palette.dart';
import 'package:sentimental_analyst/screens/login.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration:const BoxDecoration(color: Colors.white),
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/signup_top.png",
                  width: size.width * 0.35,
                ),
              ),
              // Positioned(
              //   bottom: 0,
              //   left: 0,
              //   child: Image.asset(
              //     "assets/images/main_bottom.png",
              //     width: size.width * 0.25,
              //   ),
              // ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Material(
                      child: Text(
                        "SIGNUP",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: kPrimaryColor),
                      ),
                    ),
                    SizedBox(height: size.height * 0.1),
                    SvgPicture.asset(
                      "assets/signup.svg",
                      height: size.height * 0.25,
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedInputField(
                      hintText: "Your Email",
                      onChanged: (value) {},
                    ),
                    RoundedPasswordField(
                      onChanged: (value) {},
                    ),
                    RoundedButton(
                      text: "SIGNUP",
                      press: () {},
                    ),
                     SizedBox(height: size.height * 0.03),
                    Material(
                      child: AlreadyHaveAnAccountCheck(
                        login: false,
                        press: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
