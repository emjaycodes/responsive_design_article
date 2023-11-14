import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Layout'),
        ),
        body: Center(
          child: Container(
            width: 300.0,
            height: 200.0,
            color: Colors.blue,
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 400.0) {
                    return const Text(
                      'Small Screen Layout',
                      style: TextStyle(color: Colors.white),
                    );
                  } else {
                    return const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Large Screen Layout',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20.0),
                        Icon(
                          Icons.star,
                          size: 50.0,
                          color: Colors.yellow,
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}




