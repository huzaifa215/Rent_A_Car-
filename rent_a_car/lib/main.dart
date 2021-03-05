import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rent A Car',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Rent A Car'),
    );
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
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
    Card(
    clipBehavior: Clip.antiAlias,
      child: Column(children: <Widget>[
        ListTile(
          title: Text('Car'),
          subtitle: Text(
            'CAr',
            style: TextStyle(
              color:Colors.red,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            // child: Image(
            //   //image: NetworkImage(car.supplierImage),
            //   width: 70.0,
            // ),
          ),
        ),
        // CachedNetworkImage(
        //   imageUrl: car.image,
        //   placeholder: (context, url) => CircularProgressIndicator(),
        //   errorWidget: (context, url, error) => Icon(Icons.error),
        // ),
        Row(
          //Divider line
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Divider(color: Colors.red),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.card_travel),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'car',
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.person,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'car',
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.tune,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'car',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(8.0),
                      child: Text(
                        'car',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      // padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Total',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]
      ),
    )


// This trailing comma makes auto-formatting nicer for build methods.
        ]
      )


    );
  }
}
