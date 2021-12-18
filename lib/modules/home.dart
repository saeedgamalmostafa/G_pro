import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sentimental_analyst/shared/components/components.dart';

import 'package:sentimental_analyst/shared/components/palette.dart';
import 'package:sentimental_analyst/models/tweets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: listOfTweets(),
                ),
              ],
            ),
          ),
          
        )
    );
  }

  Widget listOfTweets() {
    return Container(
      
      // height: 10000000,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return tweets[index];
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 5,
        ),
        itemCount: tweets.length,
      ),
    );
  }
}
