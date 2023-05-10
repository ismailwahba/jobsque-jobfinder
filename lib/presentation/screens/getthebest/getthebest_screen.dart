import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GetTheBestScreen extends StatefulWidget {
  const GetTheBestScreen({super.key});

  @override
  State<GetTheBestScreen> createState() => _GetTheBestScreenState();
}

class _GetTheBestScreenState extends State<GetTheBestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thebest"),
      ),
    );
  }
}
