import 'package:flutter/material.dart';
import 'package:media_booster/video.dart';
import 'audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Color customWhitekClr = Color.fromARGB(255, 237, 237, 237);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: customWhitekClr,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            centerTitle: true,
            title: Text('Media Booster',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            bottom: TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
              Tab(text: 'Audio'),
              Tab(text: 'Video'),
            ]),
          ),
          body: TabBarView(children: [
            audioscreen(),
            videoscreen()
          ])),
    );
  }
}