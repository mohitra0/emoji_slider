import 'package:flutter/material.dart';
import 'package:slider_emoji/emojislider.dart';

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
      home: MoodBars(),
    );
  }
}

class MoodBars extends StatefulWidget {
  const MoodBars({Key key}) : super(key: key);

  @override
  _MoodBarsState createState() => _MoodBarsState();
}

class _MoodBarsState extends State<MoodBars> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var font = MediaQuery.of(context).textScaleFactor;
    var widthh = screenSize.width;
    var heightt = screenSize.height;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: widthh,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EmojiSlider(
              availableWidth: widthh,
              onChange: (index) {
                print(index);
              },
            )
          ],
        ),
      ),
    );
  }
}
