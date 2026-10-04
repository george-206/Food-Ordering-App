import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (val > 0) val--;
              setState(() {});
            },
            icon: Icon(Icons.remove, color: Colors.white),
          ),
          Text("$val", style: TextStyle(color: Colors.white, fontSize: 18)),
          IconButton(
            onPressed: () {
              val++;
              setState(() {});
            },
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
