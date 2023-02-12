import 'package:flutter/cupertino.dart';
import 'variables.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home Automation'),
        backgroundColor: Color.fromARGB(255, 149, 149, 255),
      ),
      child: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(gridPaddning),
          crossAxisCount: 2,
          mainAxisSpacing: gridPaddning,
          crossAxisSpacing: gridPaddning,
          children: <Widget>[
            Container(
              color: CupertinoColors.black,
              child: const Text("He'd have you all unravel at the"),
            ),
            Container(
              color: const Color.fromARGB(255, 89, 89, 89),
              child: const Text('Heed not the rabble'),
            ),
            Container(
              color: const Color.fromARGB(255, 126, 125, 125),
              child: const Text('Sound of screams but the'),
            ),
          ],
        ),
      ),
    );
  }
}
