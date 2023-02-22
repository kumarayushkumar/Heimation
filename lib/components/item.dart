import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heimation/variables.dart';

class Item extends StatefulWidget {
  final double itemEdgeInsets;
  final double borderRadius;
  final String itemName;

  const Item({
    Key? key,
    this.itemEdgeInsets = 16,
    this.borderRadius = 20,
    required this.itemName
  }) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isOn =_isOn ? false : true;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: _isOn ? const Color(0xAA007FFF):const Color(0xAA5072A7),
        ),
        padding: const EdgeInsets.all(itemEdgeInsets),
        child: Column(
          children: <Widget>[
            Text(
              widget.itemName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        )
      ),
    );
  }
}
