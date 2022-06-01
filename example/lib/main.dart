import 'package:flutter/material.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:time_change_observer/time_change_observer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: StreamBuilder<Object>(
              stream: TimeChangeObserver.init,
              builder: (context, snapshot) {
                return FutureBuilder(
                    future: FlutterNativeTimezone.getLocalTimezone(),
                    initialData: "Unknown",
                    builder: (_, snap) {
                      if (snap.hasData) {
                        return Text("LocalTimezone: ${snap.data}");
                      }
                      return const CircularProgressIndicator();
                    });
              }),
        ),
      ),
    );
  }
}
