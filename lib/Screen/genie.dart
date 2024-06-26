import 'package:flutter/material.dart';


class genie extends StatefulWidget {
  const genie({super.key});

  @override
  State<genie> createState() => _genieState();
}

class _genieState extends State<genie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(),
            ),
          )
        ],
      ),
    );
  }
}
