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
        backgroundColor: CupertinoColors.systemOrange,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 163, 74, 172),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        child: Text(
                      'ESP Status',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 254, 255, 250),
                      ),
                    )),
                    Expanded(
                      child: Icon(CupertinoIcons.check_mark_circled_solid,
                          color: Color.fromARGB(255, 64, 255, 0)),
                    )
                  ],
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Devices',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 254, 255, 250),
            ),
          ),
          
        ],
      ),
    );
  }
}