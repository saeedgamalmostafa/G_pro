import 'package:flutter/material.dart';

import 'package:sentimental_analyst/palette.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: Material(
            child: TextFormField(
              obscureText: true,
              onChanged: onChanged,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Password",
                icon: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }
}
