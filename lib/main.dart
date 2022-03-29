import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Reto 2',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
      home: Scaffold(

        appBar: AppBar(
            leading:volver(),

            actions: <Widget>[
              menuConfig(context),

            ],
            title: const Text("Reto 2"),
            //centerTitle: true,
          ),
        body: Stack(
            children: <Widget>[
              imagenfondo(),
              textoCentro(),
            ],
          ),

        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Sumar',
            child:  const Icon(Icons.add),
            backgroundColor: Colors.pinkAccent,
          ),

    ),
    );
  }
}



Widget volver(){
  return IconButton(
      onPressed: () {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
      },
      icon: const Icon(Icons.close),
  );
}

Widget menuConfig(BuildContext context){

  return PopupMenuButton(

    itemBuilder: (context){
      return [

        const PopupMenuItem(
          child: Text("1"),
        ),
        const PopupMenuItem(
          child: Text( "2" ),
        ),
        const PopupMenuItem(
          child: Text("3"),
        ),
      ];
    },
      tooltip: 'Abrir configuraciones',
      icon: const Icon(Icons.more_vert),
  );
}

Widget imagenfondo(){
  return const Image(
      image: AssetImage('assets/imagenes/mappa.jpg'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
  );

}

Widget textoCentro(){
    return Center(
      child: Container(
        height: 90,
        color: const Color.fromRGBO(0, 0, 0, 0.5),
        child: const Center(
          child: Text('Mappa',
              style: TextStyle(fontSize: 75,
              color: Colors.white,
              fontFamily: 'Kanit',


              ))
        ),
      ),
    );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
