import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:sentimental_analyst/models/model.dart';

class ApiGetter extends ChangeNotifier {
  Welcome? data;
  Future fetchData(String tweet) async {
    final url = 'http://tweetsentimental.pythonanywhere.com/result';

    await http
        .post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "tweet": tweet,
      }),
    )
        .then((value) {
      print(value.body);
      data = welcomeFromJson(value.body);
      notifyListeners();
      print(data!.res!.result);
    }).catchError((error) {
      print(error.toString());
    });
  }
}
