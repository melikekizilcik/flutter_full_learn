import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sizedbox_learn.dart';
import 'package:flutter_full_learn/101/text_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    //Projenin ana hattı,kökü:
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: ContainerSizedBoxLearn(),
    );
  }
}

