import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // 앱구동
}



class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var a = 1;

  @override
  Widget build(BuildContext context) { // 세팅하기 위한 문법

    return MaterialApp( // 코드작성
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            print(a);
            a++;
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

