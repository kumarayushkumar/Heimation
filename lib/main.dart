import 'package:flutter/cupertino.dart';
import 'home.dart';

void main() => runApp(const PageScaffoldApp());

class PageScaffoldApp extends StatelessWidget {
  const PageScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 30, 50),
        primaryColor: CupertinoColors.activeOrange
        ),
      home: Home(),
    );
  }
}
