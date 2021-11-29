import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:sentimental_analyst/models/model.dart';


class Teezak extends ChangeNotifier{
Welcome? said;
Future fetchData(String tweet) async {
  
  final url = 'http://tweetsentimental.pythonanywhere.com/result';

   await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "tweet":tweet,
    }),
  ).then((value)
    {
      print(value.body);
       said = welcomeFromJson(value.body);
       notifyListeners();
     print(said!.res!.result);
    
    }).catchError((error)
    {
      
      print(error.toString());
    
    });
 
}

}