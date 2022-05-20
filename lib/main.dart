import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // 앱구동
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 2;

  @override
  Widget build(BuildContext context) { // 세팅하기 위한 문법

    return MaterialApp( // 코드작성
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 11,
          itemBuilder: (c, i){
            print(i);
            return ListTile(
              leading: Image.asset('profile.png'),
              title: Text('jessica'),
            );
            },
        )
      )
    );

  }
}

