import 'package:flutter/widgets.dart';
import 'package:sentimental_analyst/models/tweet.dart';

List<Widget> tweets = const [
  Tweet(
    avatar:
        'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
    username: 'Flutter',
    name: 'FlutterDev',
    // timeAgo: '5m',
    text:
        'Google’s UI toolkit to build apps for mobile, web, & desktop from a single codebase.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 0,
  ),
  Tweet(
    avatar:
        'https://pbs.twimg.com/profile_images/1168932726461935621/VRtfrDXq_400x400.png',
    username: 'Android Dev',
    name: 'AndroidDev',
    // timeAgo: '20m',
    text: 'News and announcements for developers from the Android team.',
    comments: '305',
    retweets: '20K',
    favorites: '1M',
    index: 1,
  ),
  Tweet(
    avatar:
        'https://pbs.twimg.com/profile_images/808350098178670592/bYyZI8Bp_400x400.jpg',
    username: 'Google Play',
    name: 'GooglePlay',
    // timeAgo: '21m',
    text:
        'We’re exploring the world’s greatest stories through movies, TV, games, apps, books and so much more. Up for new adventures and discoveries? Let’s play.',
    comments: '1K',
    retweets: '70K',
    favorites: '2M',
    index: 2,
  ),
];

// List<String> said = [
//   'Google’s UI toolkit to build apps for mobile, web, & desktop from a single codebase.',
// ];
