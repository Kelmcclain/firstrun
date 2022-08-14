import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
          // leading: IconButton(
          //   onPressed: (() {
          //     setState(() {});
          //   }),
          //   icon: const Icon(Icons.menu),
          // ),
          ),
      body: PageView(
        controller: controller,
        children: [
          Center(
            child: Container(
              color: Colors.white,
            ),
          ),
          Center(
            child: Container(color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
