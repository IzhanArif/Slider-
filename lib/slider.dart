import 'package:flutter/material.dart';

class Sliderrr extends StatefulWidget {
  const Sliderrr({Key? key}) : super(key: key);

  @override
  State<Sliderrr> createState() => _SliderrrState();
}

class _SliderrrState extends State<Sliderrr> {
  double sliderValue = 0.0;
  String sliderString = "0.0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Widget"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.grey,
            height: 50,
            child: Slider(
                value: sliderValue,
                min: 0,
                max: 100,
                divisions: 4,
                label: sliderString,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                    sliderString = value.round().toString();
                  });
                }),
          ),
        ),
      ),
    );
  }
}
