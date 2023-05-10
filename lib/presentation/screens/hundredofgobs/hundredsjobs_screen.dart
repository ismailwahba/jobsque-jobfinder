import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HundredsJobsScreen extends StatefulWidget {
  const HundredsJobsScreen({super.key});

  @override
  State<HundredsJobsScreen> createState() => _HundredsJobsScreenState();
}

class _HundredsJobsScreenState extends State<HundredsJobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hyndreds"),
      ),
    );
  }
}
