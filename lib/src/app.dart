import 'package:flutter/material.dart';
import 'ui/group_ddp_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        //body: MovieList(),
        body: GroupdDDPList(),
      ),
    );
  }
}