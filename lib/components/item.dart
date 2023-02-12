import 'package:flutter/cupertino.dart';
import '../variables.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.black,
      child: const Text("He'd have you all unravel at the"),
    );
  }
}