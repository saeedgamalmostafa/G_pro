// class Model{
//   Rest? RES;
//   String? Tweets;

//   Model.fromJson(Map<String, dynamic> json)
//   {
//     Tweets = json['tweets'];
//     RES = json['data'] != null ? UserData.fromJson(json['data']) : null;
//   }
// }
// class Rest{
//   String? one;
//   String? two;
//   String? three;
//   String? four;
//   String? result;

// }

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
import 'package:flutter/material.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Res? res;
  String? tweet;
  Welcome({
    this.res,
    this.tweet,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        res: Res.fromJson(json["res"]),
        tweet: json["tweet"],
      );

  Map<String, dynamic> toJson() => {
        "res": res!.toJson(),
        "tweet": tweet,
      };
}

class Res {
  Res({
    this.compound,
    this.neg,
    this.neu,
    this.pos,
    this.result,
  });

  double? compound;
  double? neg;
  double? neu;
  double? pos;
  String? result;

  factory Res.fromJson(Map<String, dynamic> json) => Res(
        compound: json["compound"],
        neg: json["neg"],
        neu: json["neu"],
        pos: json["pos"],
        result: json["result"],
      );

  Map<String, dynamic> toJson() => {
        "compound": compound,
        "neg": neg,
        "neu": neu,
        "pos": pos,
        "result": result,
      };
}
