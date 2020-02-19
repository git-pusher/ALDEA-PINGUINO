import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
 final String descriptionDummy = "Situada en la Isla Gengoro de terreno montañoso, disfruta"
     " una mezcla de rasgos japoneses y tropicales. "
      "Cuenta con una estación de policía, un banco, una escuela "
      "(donde no se estudia, sólo se asiste), un hospital, un zoológico, "
      "una cafetería, la famosa 'Coffe Pot', una barbería y otras tiendas comerciales; además de las viviendas. "
      "Su población fija es de 50 habitantes y otros tantos ocasionales. "
      "Poblado por humanos y otros seres humanoides (incluyendo la Luna y el Sol). "
      "También se pueden encontrar animales con características prehistóricas.";

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        //appBar: AppBar(
          //centerTitle: true,
          //title: Text("Reto #2"),
          //),
          //body: new DescriptionPlace("Aldea Pingüino", 4, descriptionDummy),
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  DescriptionPlace("Aldea Pingüino", 4, descriptionDummy),
                  ReviewList()
                ],
              ),
              HeaderAppBar()
            ],
          ),

          ),
        );
        //bottomNavigationBar: ,
        //floatingActionButton: ,
        //floatingActionButtonLocation: ,
        //floatingActionButtonAnimator: ,
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

