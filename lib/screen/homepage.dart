import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true; // This will preserve the state of the widget.

  @override
  Widget build(BuildContext context) {
    super.build(context); // Ensure that the mixin is correctly initialized.

    return Scaffold(
      body: Center(
        child: Text("hello world"),
      ),
      appBar: AppBar(
        title: Text("Training and Placement"),
      ),
      drawer: Drawer(),
    );
  }
}
