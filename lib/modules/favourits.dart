import 'package:flutter/material.dart';
import 'package:sentimental_analyst/models/tweets.dart';
import 'package:sentimental_analyst/modules/home.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';

  List FavoriteTweets = [];



class Favourits extends StatelessWidget {
  const Favourits({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Container(
        child: ListView.separated(
            // physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return FavoriteTweets[index];
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(
              height: 0,
            ),
            itemCount: FavoriteTweets.length,
          ),
      ),
    );
  }
}