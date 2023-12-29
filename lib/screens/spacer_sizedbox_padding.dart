import 'package:flutter/material.dart';

class SizedBoxPaddingSpacerWidget extends StatelessWidget {
   const SizedBoxPaddingSpacerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Adaptive Spacing'),
        ),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Space Example',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Using SizedBox:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 200.0,
                height: 50.0,
                color: Colors.blue,
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Using Spacer:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                  const Spacer(),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Using Padding:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  width: 150.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
