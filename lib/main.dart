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
      title: 'Adaptive Widget Demo',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const AdaptiveWidgetScreen(),
    );
  }
}

class AdaptiveWidgetScreen extends StatefulWidget {
  const AdaptiveWidgetScreen({Key? key}) : super(key: key);

  @override
  _AdaptiveWidgetScreenState createState() => _AdaptiveWidgetScreenState();
}

class _AdaptiveWidgetScreenState extends State<AdaptiveWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adaptive Widget Demo"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider.adaptive(value: 1, onChanged: (double newValue) {}),
            SwitchListTile.adaptive(
              title: const Text("Switch List Tile"),
                value: true, 
                onChanged: (bool newValue) {},
            ),
            Switch.adaptive(value: true, onChanged: (bool newValue) {}),
            Icon(Icons.adaptive.share,),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}

