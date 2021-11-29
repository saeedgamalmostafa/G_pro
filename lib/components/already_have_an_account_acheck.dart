import 'package:flutter/material.dart';
import 'package:sentimental_analyst/palette.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login ? "Don’t have an Account ? " : "Already have an Account ? ",
    
            style:const TextStyle(color: kPrimaryColor,fontSize: 13),
          ),
          const SizedBox(height: 15,),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "Sign Up" : "Sign In",
              style:const TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
