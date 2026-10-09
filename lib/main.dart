import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green.shade800,
      appBar: AppBar(
        title: Text('Dice Roller',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.green.shade900,
        centerTitle: true,
      ),
      body: DicePage(),
    ),
  ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Tap the dice to roll!',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 30,),
          SizedBox(
            height: 150.0,
            width: 150.0,
            child: TextButton(
                onPressed: () {
                 setState(() {
                   print('$diceNumber clicked!');
                   diceNumber=Random().nextInt(6)+1;
                 });
                },
                child: Image.asset(
                    'assets/images/dice$diceNumber.png'
                ),
            ),
          ),
        ],
      ),
    );
  }
}

