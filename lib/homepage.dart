import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  secureScreen() async{
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secureScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Secured App"),
        centerTitle: true,
      ) ,
      body: Center(
        child:Text("Screen Is Secured",style: TextStyle(color: Colors.green,fontSize: 20.0,
        ),) ,
      ) ,
    );
  }
}