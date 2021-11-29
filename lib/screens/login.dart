import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/components/bottomNavBar.dart';
import 'package:sentimental_analyst/components/already_have_an_account_acheck.dart';
import 'package:sentimental_analyst/components/rounded_button.dart';
import 'package:sentimental_analyst/components/rounded_input_field.dart';
import 'package:sentimental_analyst/components/rounded_password_field.dart';
import 'package:sentimental_analyst/components/services.dart';
import 'package:sentimental_analyst/palette.dart';
import 'package:sentimental_analyst/screens/home.dart';
import 'package:sentimental_analyst/screens/result.dart';
import 'package:sentimental_analyst/screens/signup.dart';
import 'package:sentimental_analyst/models/model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: kPrimaryLightColor,
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: size.width * 0.35,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: size.width * 0.4,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Material(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: kPrimaryColor,
                          backgroundColor: kPrimaryLightColor,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    SvgPicture.asset(
                      "assets/login.svg",
                      height: size.height * 0.35,
                      width: size.height * 0.25,
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
                      text: "LOGIN",
                      press: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Bottom();
                            },
                          ),
                        );
                      },
                    ),
                    RoundedButton(
                      text: "LOsGIN",
                      press: () {
                        Provider.of<Teezak>(context, listen: false)
                            .fetchData("sf");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Result();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: size.height * 0.03),
                    Material(
                      color: kPrimaryLightColor,
                      child: AlreadyHaveAnAccountCheck(
                        press: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
