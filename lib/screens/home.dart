import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sentimental_analyst/components/carousel_loading.dart';
import 'package:sentimental_analyst/palette.dart';
import 'package:sentimental_analyst/models/tweets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryLightColor,
          body: Container(
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(5.0),
            child: ListView(
              children: [
                CarouselLoading(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: listOfTweets(),
                ),
              ],
            ),
          ),
          
        ),
      ),
    );
  }

  Widget listOfTweets() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        
        height: 10000000,
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return tweets[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 0,
          ),
          itemCount: tweets.length,
        ),
      ),
    );
  }
}

class Icon1 extends StatefulWidget {
  const Icon1({Key? key}) : super(key: key);

  @override
  _Icon1State createState() => _Icon1State();
}

class _Icon1State extends State<Icon1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Text('Settings',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
