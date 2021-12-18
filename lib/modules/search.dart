import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/services.dart';
import 'package:sentimental_analyst/modules/result.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';



class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String text = "";
  String sentimentResult = "";
  String sentimentScore = "";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text("sentiment analyzer"),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Form(
                    key: _formkey,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          text = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kPrimaryLightColor.withOpacity(0.3),
                        hintText: "write a text",
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black87, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black87, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                    primary: Colors.green,
                    backgroundColor: Colors.black.withOpacity(0.05)),
                icon: const Icon(
                  Icons.sentiment_neutral,
                  color: Colors.black87,
                  size: 30,
                ),
                label: Text(
                  'Analyze Text',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline6!
                      .apply(color: Colors.black),
                ),
                onPressed: () async {
                        Provider.of<ApiGetter>(context, listen: false)
                            .fetchData(text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Result();
                            },
                          ),
                        );
                  // final url = Uri.http("10.0.2.2:5000", "/");
                  // final responce = await http.post(
                  //     url, body: json.encode({'text': text}),
                  // headers: {'Content-Type' : "application/json;charset=utf-8"},
                  // );
                  // print('StatusCode:${responce.statusCode}');
                  // print('Return Date : ${responce.body}');
                  // if(responce.statusCode==200){
                  //   final jsonResponse = jsonDecode(responce.body)as Map<String,dynamic>;
                  //   sentimentResult = jsonResponse['sentiment'];
                  //   sentimentScore= jsonResponse['Score'];
                  //   print(sentimentResult);
                  //   print(sentimentScore);
                  //   setState(() {
                  //     sentimentResult=sentimentResult;
                  //     sentimentScore=sentimentScore;
                  //   });
                  //   // else{print("Request failed with status : ${responce.statusCode}")};
                    
                  // }
                },
              ),
              // SizedBox(
              //   height: 10,
              // Text(
              //   "SentimentResult : $sentimentResult",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 18,
              //       fontWeight: FontWeight.w400),
              // ),
              // SizedBox(height: 5,),
              // SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   "Score : $sentimentScore",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 18,
              //       fontWeight: FontWeight.w400),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}