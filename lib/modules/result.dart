import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/model.dart';
import 'package:sentimental_analyst/models/services.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    Welcome? authors = Provider.of<ApiGetter>(context).data;
    return Scaffold(
      body: authors != null
          ? Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                  child: Text(
                '${authors.res!.result}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ])
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
