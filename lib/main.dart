import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

const URL = "http://www.karthikeyasolutions.com/";
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

       // primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
     /* appBar: AppBar(
       // title: Text("WebView"),
        actions: <Widget>[
        //  IconButton(icon: Icon(Icons.notifications),),
         // IconButton(icon: Icon(Icons.search), ),

        ],
      ),*/
      url: "http://www.karthikeyasolutions.com/",
      initialChild: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
