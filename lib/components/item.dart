import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final double itemEdgeInsets;
  final double borderRadius;
  final String itemName;
  final double fontSize;

  const Item(
      {Key? key,
      this.itemEdgeInsets = 20,
      this.borderRadius = 20,
      this.fontSize = 28,
      required this.itemName})
      : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool _isOn = false;
  // bool _isTimer = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => {

      },
      onTap: () {
        setState(() {
          _isOn = _isOn ? false : true;
        });
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            color: _isOn ? const Color(0xAA007FFF) : const Color(0xAA5072A7),
          ),
          padding: EdgeInsets.all(widget.itemEdgeInsets),
          child: Column(
            children: <Widget>[
              Text(
                widget.itemName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: widget.fontSize,
                  color: const Color.fromARGB(255, 254, 255, 250),
                ),
              ), 
            ],
          )),
    );
  }
}
