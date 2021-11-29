import 'package:flutter/material.dart';
import 'package:sentimental_analyst/palette.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin:const EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: Material(
            child: TextFormField(
              onChanged: onChanged,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                icon: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    
                    icon,
                    color: kPrimaryColor,
                  ),
                ),
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }
}
