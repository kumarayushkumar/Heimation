import 'package:flutter/cupertino.dart';
import 'package:heimation/components/item.dart';
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
          children: const <Widget>[
            Item(itemName: 'Bed Room',),
            Item(itemName: 'Hall',),
          ],
        ),
      ),
    );
  }
}
