import 'package:flutter/material.dart';

import 'GoogleMapScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
 class HomePage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Home Screen'),
       ),
       body: Center(

         child: Column(

           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               'Google map',
               style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold
               ),
             ),

           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         // ignore: non_constant_identifier_names
         onPressed: () =>
             Navigator.push(context,
                 MaterialPageRoute(builder: (Context) => GoogleMapScreen()
                 )
             ),
         tooltip: 'Google Map',
         child: Icon(Icons.pin_drop_outlined),
       ), // This trailing  ,
     );
   }
 }