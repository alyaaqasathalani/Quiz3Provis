import 'package:flutter/material.dart';
import "dropdown.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'KUIS 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            widget,
            const Text(
                'Kami berjanji tidak akan melakukan kecurangan dan membantu orang lain dalam berbuat kecurangan'),
          ],
        ),
      ),
    );
  }
}

abstract class MyPages extends StatefulWidget {
  const MyPages({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuis 3'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: MyDropdownWidget(),
      ),
    );
  }
}
