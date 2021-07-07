import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  final String title;
  final Widget body;

  const BaseScreen({
    Key key,
    this.title,
    @required this.body,
  }) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [widget.body],
        ),
      );
}
