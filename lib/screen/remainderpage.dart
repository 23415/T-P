import 'package:flutter/material.dart';

class RemainderPage extends StatefulWidget {
  const RemainderPage({Key? key}) : super(key: key);

  @override
  State<RemainderPage> createState() => _RemainderPageState();
}

class _RemainderPageState extends State<RemainderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text("Remainder"),
      ),
    ));
  }
}
