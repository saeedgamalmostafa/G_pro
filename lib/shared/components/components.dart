import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sentimental_analyst/modules/search.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';
import 'package:sentimental_analyst/modules/favourits.dart';
import 'package:sentimental_analyst/modules/home.dart';

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
            style: const TextStyle(color: kPrimaryColor, fontSize: 13),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "Sign Up" : "Sign In",
              style: const TextStyle(
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

// ignore: use_key_in_widget_constructors
class Bottom extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Bottom> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List _widgetOptions = [
    HomeScreen(),
    Favourits(),
    SearchScreen(),
    CustomeDrawer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: kPrimaryColor.withOpacity(0.35),
        backgroundColor: kPrimaryLightColor,
        key: _bottomNavigationKey,
        buttonBackgroundColor: kPrimaryLightColor,
        height: 60,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Icon(Icons.home, size: 35, color: kPrimaryColor),
          Icon(Icons.favorite, size: 35, color: kPrimaryColor),
          Icon(Icons.saved_search_sharp, size: 35, color: kPrimaryColor),
          Icon(Icons.list, size: 35, color: kPrimaryColor),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_page),
    );
  }
}

class CarouselLoading extends StatelessWidget {
  const CarouselLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          // aspectRatio: 2.0,
          // enlargeCenterPage: true,
          viewportFraction: 1.0,
        ),
        items: [
          // container with decoration image
          Container(
            child: Image.asset('assets/images/sent0.jpeg'),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Container(
            child: Image.asset('assets/images/sent1.jpeg'),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String? text;
  final Function() press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text!,
        style: TextStyle(color: textColor),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}

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
        margin: const EdgeInsets.symmetric(vertical: 10),
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

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

class CustomeDrawer extends StatefulWidget {
  const CustomeDrawer({Key? key}) : super(key: key);

  @override
  _CustomeDrawerState createState() => _CustomeDrawerState();
}

class _CustomeDrawerState extends State<CustomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
