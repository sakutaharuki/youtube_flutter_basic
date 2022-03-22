// Youtube URL: https://youtu.be/lJfOzwifgG4
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）


import 'package:flutter/material.dart';

/// Placeholder is a widget that draws a box to reserve a place
/// where other widgets will be added.
/// Example of a useful use: During development,
/// it can indicate that the interface is not yet complete.
/// （Placeholder は他のウィジェットが追加される場所を確保するボックスを描画するウィジェット）
/// （役立つ使い方の例：開発中にインターフェースがまだ完成していないことを示すことができる）
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightBlueAccent,
            height: 100,
            width: 300,
          ),
          const Placeholder(
            color: Colors.blue,

            /// Column So you can set the vertical width.
            /// （Column だから縦の幅の設定ができる）
            fallbackHeight: 300.0,

            /// Horizontal width can be set when Row.
            /// （横の幅の設定ができるのは Row の時）
            // fallbackWidth: 300.0,
            strokeWidth: 5.0,
          ),
          Container(
            color: Colors.purple,
            height: 150,
            width: 300,
          ),
          Container(
            color: Colors.orangeAccent,
            height: 100,
            width: 300,
          ),
        ],
      ),
    );
  }
}
