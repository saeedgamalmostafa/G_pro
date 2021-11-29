import 'package:flutter/material.dart';

import 'package:sentimental_analyst/palette.dart';
import 'package:sentimental_analyst/models/tweets.dart';

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
// class Test extends StatelessWidget {
//   final List TTweets;

//   const Test({required this.TTweets}) ;
//   @override
//   Widget build(BuildContext context) {
//     // Size size = MediaQuery.of(context).size;

//     return   Container(
//       height: 10000000,
//       child: ListView.separated(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         itemBuilder: (BuildContext context, int index) {
//           return TTweets[index];
//         },
//         separatorBuilder: (BuildContext context, int index) => const Divider(
//           height: 0,
//         ),
//         itemCount: TTweets.length,
//       ),
//     );
//   }
// }

