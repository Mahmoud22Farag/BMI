import 'dart:developer';

import 'package:flutter/material.dart';

class counterscreen extends StatefulWidget {
  const counterscreen({Key? key}) : super(key: key);

  @override
  State<counterscreen> createState() => _counterscreenState();
}

class _counterscreenState extends State<counterscreen> {
  int counter = 1;
   @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Text(
            'welcom',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState((
                      ) {
                    counter++;
                    print(counter);
                  });
                },
                child: Text(
                  'plus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState((
                      ) {
                    counter--;
                    print(counter);
                  });

                },
                child: Text(
                  'minus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
