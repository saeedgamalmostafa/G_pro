import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/model.dart';
import 'package:sentimental_analyst/components/services.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

 

  @override
  Widget build(BuildContext context) {

     Welcome? authors = Provider.of<Teezak>(context).said;
    return  Scaffold(
      body:authors!= null? Column(children: [
        Text('${authors.res!.compound}'),
        Text('${authors.res!.neg}'),
        Text('${authors.res!.neu}'),
        Text('${authors.res!.pos}'),
        Text('${authors.res!.result}'),
      ]):Center(
     child: CircularProgressIndicator(),
    ),
    );
  }
}
