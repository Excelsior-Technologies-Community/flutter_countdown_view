import 'package:flutter/material.dart';
import 'package:flutter_countdown_view/src/flutter_countdown_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_countdown_view',
      home: CountdownView(seconds: 15),
    );
  }
}
