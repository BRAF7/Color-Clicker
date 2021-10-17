// ignore_for_file: prefer_const_constructors


import 'package:colors_backgorund_flutter/src/colors_buttoms.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  Color? selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Change color'),
        backgroundColor: selectedColor ?? Colors.orange.shade800,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Tap to change color',
                  style: TextStyle(fontSize: 20, color: selectedColor ?? Colors.white70),
                ),
              ),
              for (var entry in colors.entries)
                //Here we change the size and other things of the buttoms
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: entry.value, minimumSize: Size(50, 60)),
                    onPressed: () => setColor(entry.key, entry.value),
                    child: Icon(Icons.change_circle),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  setColor(String key, Color value) {
    setState(() {
      selectedColor = value;
    });
  }
}
